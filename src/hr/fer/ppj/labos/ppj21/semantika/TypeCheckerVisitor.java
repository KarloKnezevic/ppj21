
package hr.fer.ppj.labos.ppj21.semantika;
import hr.fer.ppj.labos.ppj21.ast.*;
import hr.fer.ppj.labos.ppj21.gui.CompilerGUI;
import hr.fer.ppj.labos.ppj21.visitor.Visitor;

import java.util.Enumeration;
import java.util.Map;
import java.util.Vector;

import javax.swing.ImageIcon;

/**
* Provjerava se tip svakog čvora i javljaju moguće greške.
*/
public class TypeCheckerVisitor implements Visitor {

	private Map<String, String> symTable;
	private String currentPath, tempType;
	boolean hadTypeCheckError;

	public TypeCheckerVisitor(Map<String, String> symbolTable) {
		//uzima se pripremljena tablica simbola
		this.symTable = symbolTable;
	}

	public String getType(String varName){
		//metoda dohvaća tip određene varijable. ukoliko ista nije definirana lokalno, ide se na višu razinu tako da se makne jedan blok označen dvotočkama
		String tempPath = currentPath;
		while(tempPath.length()>0){
			if(symTable.containsKey(tempPath+":"+varName))
				return symTable.get(tempPath+":"+varName);
			int itemp = tempPath.lastIndexOf(":");
			if(itemp==-1)
				tempPath = tempPath.substring(0, 0);
			else
				tempPath = tempPath.substring(0, itemp);
		}
		return symTable.get(varName);
	}

	public void visit(NodeList n) throws Exception {
		for(Enumeration<Node> e = n.elements(); e.hasMoreElements();)
			((Node)e.nextElement()).accept(this);
	}

	public void visit(NodeListOptional n) throws Exception {
		if(n.present())
			for(Enumeration<Node> e = n.elements(); e.hasMoreElements();)
				((Node)e.nextElement()).accept(this);
	}

	public void visit(NodeOptional n) throws Exception {
		if(n.present())
			n.node.accept(this);
	}

	public void visit(NodeSequence n) throws Exception {
		for(Enumeration<Node> e = n.nodes.elements(); e.hasMoreElements();)
			((Node)e.nextElement()).accept(this);
	}

	public void visit(NodeToken n) throws Exception {}

	/**
	 * f0 -> MainClass()
	 * f1 -> ( ClassDecl() )*
	 * f2 -> <EOF>
	 */
	public void visit(Program n) throws Exception {
		//pokreće se provjera cijelog programa, te se u konačnici ispisuje error ukoliko je bilo ikakve greške
		hadTypeCheckError = false;
		currentPath = "";
		//posjećujemo čvor sa main klasom
		n.f0.accept(this);
		//posjećujemo čvor sa ostalim klasama
		n.f1.accept(this);
		if (hadTypeCheckError)
			throw new Exception("Type-check error!");
	}

	/**
	 * f0 -> <CLASS>
	 * f1 -> ID()
	 * f2 -> "{"
	 * f3 -> <PUBLIC>
	 * f4 -> <STATIC>
	 * f5 -> <VOID>
	 * f6 -> <MAIN>
	 * f7 -> "("
	 * f8 -> <STRING>
	 * f9 -> "["
	 * f10 -> "]"
	 * f11 -> ID()
	 * f12 -> ")"
	 * f13 -> "{"
	 * f14 -> Statement()
	 * f15 -> "}"
	 * f16 -> "}"
	 */
	public void visit(MainClass n) throws Exception {
		//path se postavlja na ime trenutne klase
		currentPath = n.f1.f0.tokenImage;
		//provjeravaju se blokovi u main metodi klase
		n.f14.accept(this);
	}

	/**
	 * f0 -> <CLASS>
	 * f1 -> ID()
	 * f2 -> ( <EXTENDS> ID() )?
	 * f3 -> "{"
	 * f4 -> ( VarDecl() )*
	 * f5 -> ( MethodDecl() )*
	 * f6 -> "}"
	 */
	public void visit(ClassDecl n) throws Exception {
		//path se postavlja na ime trenutne klase
		currentPath = n.f1.f0.tokenImage;
		//posjećujemo čvor sa deklaracijama varijabli
		n.f4.accept(this);
		//posjećujemo čvor sa deklaracijama metoda
		n.f5.accept(this);
	}

	/**
	 * f0 -> Type()
	 * f1 -> ID()
	 * f2 -> ";"
	 */
	public void visit(VarDecl n) throws Exception {
		n.f0.accept(this);
	}

	/**
	 * f0 -> <PUBLIC>
	 * f1 -> Type()
	 * f2 -> ID()
	 * f3 -> "("
	 * f4 -> ( VarDecl() ( "," VarDecl() )* )?
	 * f5 -> ")"
	 * f6 -> "{"
	 * f7 -> ( VarDecl() )*
	 * f8 -> ( Statement() )*
	 * f9 -> <RETURN>
	 * f10 -> Exp()
	 * f11 -> ";"
	 * f12 -> "}"
	 */
	public void visit(MethodDecl n) throws Exception {
		String tempPath = currentPath;
		//na path se dodaje : i ime metode
		currentPath += ":"+n.f2.f0.tokenImage;
		//posjećuje se čvor sa argumentima
		n.f4.accept(this);
		//posjećuje se čvor sa deklaracijama varijabli
		n.f7.accept(this);
		//posjećuje se čvor sa blokovima
		n.f8.accept(this);
		try {
			//provjerava se tip povratne vrijednosti
			n.f10.accept(this);
			// ako se ne slaže sa povratnim tipom kod deklaracije metode, javi grešku
			if(!tempType.equals(n.f1.typeName()))
				throw new TypeException("Invalid return Type!", n.f9);
		} catch (Exception e) {
			//javlja se greška, postavlja oznaka u GUI-ju
			hadTypeCheckError = true;
			if(e instanceof TypeException) {
				TypeException e1=(TypeException)e;
				CompilerGUI.scrollPane1.getGutter().addLineTrackingIcon(e1.getToken().beginLine-1, createImageIcon("error.gif",e.getMessage()));
				CompilerGUI.errorText.setText(CompilerGUI.errorText.getText() + e.getMessage() + "\n");
			}
		}
		currentPath = tempPath;
	}

	/**
	 * f0 -> <INT> "[" "]"
	 *       | <INT>
	 *       | <BOOLEAN>
	 *       | ID()
	 */
	public void visit(Type n) throws Exception {
		//ako se radi o konstruktoru klase
		if(n.f0.which==3){
			String typeName = symTable.get(((ID)n.f0.choice).f0.tokenImage);
			//ako ne postoji takva klasa, javi grešku
			if(typeName==null || !typeName.equals("class"))
				throw new TypeException("Type not found!", ((ID)n.f0.choice).f0);
		}
	}

	/**
	 * f0 -> "{" ( Statement() )* "}"
	 *       | <IF> "(" Exp() ")" Statement() <ELSE> Statement()
	 *       | <WHILE> "(" Exp() ")" Statement()
	 *       | "System.out.println" "(" Exp() ")" ";"
	 *       | ID() "=" Exp() ";"
	 *       | ID() "[" Exp() "]" "=" Exp() ";"
	 */
	public void visit(Statement n) throws Exception {
		try {
			String idType;
			switch(n.f0.which){
				case 0:
					//običan blok naredbi u vitičastim zagradama
					n.f0.choice.accept(this);
					break;
				case 1:
					//if blok
					Vector<Node> v1 = ((NodeSequence)n.f0.choice).nodes;
					((Node)v1.elementAt(2)).accept(this);
					//ako zadnji posjećeni čvor nije tipa bool, javi grešku
					if(!tempType.equals("boolean"))
						throw new TypeException("If just takes boolean conditions!", (NodeToken)v1.elementAt(0));
					((Node)v1.elementAt(4)).accept(this);
					((Node)v1.elementAt(6)).accept(this);
					break;
				case 2:
					//while blok
					Vector<Node> v2 = ((NodeSequence)n.f0.choice).nodes;
					((Node)v2.elementAt(2)).accept(this);
					//ako zadnji čvor nije tipa bool, javi grešku
					if(!tempType.equals("boolean"))
						throw new TypeException("While just takes boolean conditions!", (NodeToken)v2.elementAt(0));
					((Node)v2.elementAt(4)).accept(this);
					break;
				case 3:
					//System.out.println
					Vector<Node> v3 = ((NodeSequence)n.f0.choice).nodes;
					((Node)v3.elementAt(2)).accept(this);
					//ako se pokuža printati nešto što nije int, string ili bool, javi grešku
					if(!tempType.equals("int") && !tempType.equals("boolean") && !tempType.equals("string"))
						throw new TypeException("Cannot print this type!", (NodeToken)v3.elementAt(1));
					break;
				case 4:
					//pridruživanje
					Vector<Node> v4 = ((NodeSequence)n.f0.choice).nodes;
					((Node)v4.elementAt(0)).accept(this);
					idType = tempType;
					//ne može se vrijednost pridružiti klasi
					if(idType.equals("class") || idType.equals("mainclass"))
						throw new TypeException("Class names can not be L-value!", (NodeToken)v4.elementAt(1));
					//ne može se vrijednost pridružiti metodi
					if(idType.indexOf('(')!=-1)
						throw new TypeException("Method names can not be L-value!", (NodeToken)v4.elementAt(1));
					((Node)v4.elementAt(2)).accept(this);
					//tipovi podataka se razlikuju
					if(!tempType.equals(idType))
						throw new TypeException("Type mismatch in assignment!", (NodeToken)v4.elementAt(1));
					break;
				case 5:
					//pridruživanje kod polja
					Vector<Node> v5 = ((NodeSequence)n.f0.choice).nodes;
					((Node)v5.elementAt(0)).accept(this);
					idType = tempType;
					//nema polja prije znaka [
					if(idType.indexOf('[')==-1)
						throw new TypeException("No array is found before \"[\"", (NodeToken)v5.elementAt(1));
					((Node)v5.elementAt(2)).accept(this);
					//indeks nije tipa int
					if(!tempType.equals("int"))
						throw new TypeException("Index should be an integer value!", (NodeToken)v5.elementAt(1));
					((Node)v5.elementAt(5)).accept(this);
					//razlikuju se tipovi podataka
					if(!idType.startsWith(tempType))
						throw new TypeException("Type mismatch in assignment", (NodeToken)v5.elementAt(4));
					break;
			}
		} catch (Exception e) {
			hadTypeCheckError = true;
			if(e instanceof TypeException) {
				TypeException e1=(TypeException)e;
				CompilerGUI.scrollPane1.getGutter().addLineTrackingIcon(e1.getToken().beginLine-1, createImageIcon("error.gif",e.getMessage()));
				CompilerGUI.errorText.setText(CompilerGUI.errorText.getText() + e.getMessage() + "\n");
			}
		}
	}

	/**
	 * f0 -> BoolExp()
	 * f1 -> ( "&&" BoolExp() )*
	 */
	public void visit(Exp n) throws Exception {
		n.f0.accept(this);
		//ako postoji još koji bool izraz
		if(n.f1.present()){
			//ako drugi izraz nije tipa bool
			if(!tempType.equals("boolean"))
				throw new TypeException("Logical and needs two boolean expressions!", (NodeToken)((NodeSequence)n.f1.nodes.elementAt(0)).nodes.elementAt(0));
			//provjera ostalih izraza
			for(Enumeration<Node> e = n.f1.elements(); e.hasMoreElements();){
				Vector<Node> ns = ((NodeSequence)e.nextElement()).nodes;
				((Node)ns.elementAt(1)).accept(this);
				if(!tempType.equals("boolean"))
					throw new TypeException("Logical and needs two boolean expressions!", (NodeToken)ns.elementAt(0));
			}
		}
	}

	/**
	 * f0 -> MathExp()
	 * f1 -> ( "<" MathExp() )*
	 */
	public void visit(BoolExp n) throws Exception {
		n.f0.accept(this);
		//ako postoji još izraza
		if(n.f1.present()){
			//ako se pokušavaju uspoređivati tipovi koji nisu int
			if(!tempType.equals("int"))
				throw new TypeException("Only integer values can be compared!", (NodeToken)((NodeSequence)(n.f1.nodes.elementAt(0))).nodes.elementAt(0));
			//provjera ostalih izraza
			for(Enumeration<Node> e = n.f1.elements(); e.hasMoreElements();){
				Vector<Node> ns = ((NodeSequence)e.nextElement()).nodes;
				((Node)ns.elementAt(1)).accept(this);
				if(!tempType.equals("int"))
					throw new TypeException("Only integer values can be compared!", (NodeToken)ns.elementAt(0));
			}
			tempType = "boolean";
		}
	}

	/**
	 * f0 -> Term()
	 * f1 -> ( ( "+" | "-" ) Term() )*
	 */
	public void visit(MathExp n) throws Exception {
		n.f0.accept(this);
		//ako postoji još izraza
		if(n.f1.present()){
			//mogu se zbrajati i oduzimati samo int vrijednosti
			if(!tempType.equals("int"))
				throw new TypeException("Only integer values can be added or subtracted!", (NodeToken)((NodeChoice)((NodeSequence)(n.f1.nodes.elementAt(0))).nodes.elementAt(0)).choice);
			//provjera ostalih izraza
			for(Enumeration e = n.f1.elements(); e.hasMoreElements();){
				Vector<Node> ns = ((NodeSequence)e.nextElement()).nodes;
				((Node)ns.elementAt(1)).accept(this);
				if(!tempType.equals("int"))
					throw new TypeException("Only integer values can be added or subtracted!", (NodeToken)((NodeChoice)ns.elementAt(0)).choice);
			}
		}
	}

	/**
	 * f0 -> Factor()
	 * f1 -> ( "*" Factor() )*
	 */
	public void visit(Term n) throws Exception {
		n.f0.accept(this);
		//ako postoji još izraza
		if(n.f1.present()){
			//mogu se množiti smao int izrazi
			if(!tempType.equals("int"))
				throw new TypeException("Only integer values can be multiplied!", (NodeToken)((NodeSequence)(n.f1.nodes.elementAt(0))).nodes.elementAt(0));
			//provjera ostalih
			for(Enumeration<Node> e = n.f1.elements(); e.hasMoreElements();){
				Vector<Node> ns = ((NodeSequence)e.nextElement()).nodes;
				((Node)ns.elementAt(1)).accept(this);
				if(!tempType.equals("int"))
					throw new TypeException("Only integer values can be multiplied!", (NodeToken)ns.elementAt(0));
			}
		}
	}

	/**
	 * f0 -> ( "!" )*
	 * f1 -> ( <NEW> <INT> "[" Exp() "]" | <NEW> ID() "(" ")" | Atom() )
	 * f2 -> ( MethodCall() )*
	 */
	public void visit(Factor n) throws Exception {
		//postoji negacija
		if(n.f0.present()){
			//operator new se ne smije negirati
			if(n.f1.which!=2)
				throw new TypeException("\"new\" operator can not be \"not\"ed!", (NodeToken)n.f0.nodes.lastElement());
			n.f1.choice.accept(this);
			//ne mogu se negirati polja i integeri
			if(tempType.equals("int") || tempType.equals("int[]") || tempType.equals("string[]"))
				throw new TypeException("Invalid type for logical not operator", (NodeToken)n.f0.nodes.lastElement());
		} else {
			if(n.f1.which==0){
				//novo polje integera
				((Node)((NodeSequence)n.f1.choice).nodes.elementAt(3)).accept(this);
				//ako broj u zagradi nije int, javi grešku
				if(!tempType.equals("int"))
					throw new TypeException("\"new\" operator index should be an integer value!", (NodeToken)((NodeSequence)n.f1.choice).nodes.elementAt(2));
				tempType = "int[]";
			} else if(n.f1.which==1) {
				//konstruktor razreda
				((Node)((NodeSequence)n.f1.choice).nodes.elementAt(1)).accept(this);
				//ne može se stvoriti primjerak nečega što nije razred
				if(!tempType.equals("class"))
					throw new TypeException("Cannot new this type!", (NodeToken)((NodeSequence)n.f1.choice).nodes.elementAt(2));
				tempType = ((ID)((NodeSequence)n.f1.choice).nodes.elementAt(1)).f0.tokenImage;
			} else
				n.f1.choice.accept(this);
		}
		n.f2.accept(this);
		//mogu se negirati samo bool izrazi
		if(n.f0.present() && !tempType.equals("boolean"))
			throw new TypeException("Invalid type for logical not operator", (NodeToken)n.f0.nodes.lastElement());
	}

	/**
	 * f0 -> "." <LENGTH>
	 *       | "." ID() "(" ( Exp() ( "," Exp() )* )? ")"
	 *       | "[" Exp() "]"
	 */
	public void visit(MethodCall n) throws Exception {
		if(n.f0.which==0){
			//duljina polja, javi grešku ako se koristi nad nečim što nije polje
			if(tempType.indexOf('[')==-1)
				throw new TypeException("Length is only used for arrays!", (NodeToken)((NodeSequence)n.f0.choice).nodes.elementAt(1));
			tempType = "int";
		} else if(n.f0.which==1) {
			//pristup metodi razreda
			Vector<Node> v = ((NodeSequence)n.f0.choice).nodes;
			//ako je točka stavljena nakon primitivnog tipa podatka
			if(tempType.equals("int") || tempType.equals("int[]") || tempType.equals("boolean") || tempType.equals("string") || tempType.equals("string[]"))
				throw new TypeException("Cannot invoke a method through primitives!", (NodeToken)v.elementAt(0));
			//dohvat metode iz tablice simbola
			String tempMethod = symTable.get(tempType + ":" + ((ID)v.elementAt(1)).f0.tokenImage);
			if(tempMethod==null)
				throw new TypeException("Cannot resolve method name!", (NodeToken)v.elementAt(0));
			//provjera argumenata
			NodeOptional no = (NodeOptional)v.elementAt(3);
			if(no.present()){
				//idemo rekonstruirati listu argumenata da vidimo paše li uz signaturu metode
				//prvo brišemo sve desno od zagrade, dodajemo zagradu i idemo dalje
				String tempCall = tempMethod.split("[(]")[0] + "(";
				((Node)((NodeSequence)no.node).nodes.elementAt(0)).accept(this);
				tempCall += tempType;
				//provjera svih argumenata i nadovezivanje na tempCall
				NodeListOptional nol = ((NodeListOptional)((NodeSequence)no.node).nodes.elementAt(1));
				if(nol.present())
					for(Enumeration e = nol.elements(); e.hasMoreElements();){
						((Node)((NodeSequence)e.nextElement()).nodes.elementAt(1)).accept(this);
						tempCall += "," + tempType;
					}
				tempCall += ")";
				//ako ne paše, javi grešku
				if(!tempCall.equals(tempMethod))
					throw new TypeException("Method signature is wrong!", (NodeToken)v.elementAt(2));
			}
			//ako nema argumenata u pozivu funkcije, a signatura kaže da bi trebalo biti, javi grešku
			else if(tempMethod.indexOf(")")-tempMethod.indexOf("(")!=1)
				throw new TypeException("No arguments found for this method!", (NodeToken)v.elementAt(2));
			//briši sve osim return typea
			tempType = tempMethod.split("[(]")[0];
		} else {
			//ako se radi o polju
			if(tempType.indexOf('[')==-1)
				throw new TypeException("No array is found before \"[\" !", (NodeToken)((NodeSequence)n.f0.choice).nodes.elementAt(0));
			n.f0.choice.accept(this);
			//ako index nije integer
			if(!tempType.equals("int"))
				throw new TypeException("Indices should be integer values!", (NodeToken)((NodeSequence)n.f0.choice).nodes.elementAt(0));
			//tempType = tempType.substring(0, tempType.length()-2);
		}
	}

	/**
	 * f0 -> "(" Exp() ")"
	 *       | ID()
	 *       | <INTEGER_LITERAL>
	 *       | <TRUE>
	 *       | <FALSE>
	 *       | <THIS>
	 */
	public void visit(Atom n) throws Exception {
		switch(n.f0.which){
			case 0:
			case 1:
				//izraz ili konstruktor tipa
				n.f0.choice.accept(this);
				break;
			case 2:
				//tip je integer
				tempType = "int";
				break;
			case 3:
			case 4:
				//tip je bool
				tempType = "boolean";
				break;
			case 5:
				//dohvaća se ime razreda
				tempType = currentPath.split(":")[0];
				break;
		}
	}

	/**
	 * f0 -> <IDENTIFIER>
	 */
	public void visit(ID n) throws Exception {
		String typeName = getType(n.f0.tokenImage);
		//ne može se dohvatiti ime identifikatora
		if(typeName == null)
			throw new TypeException("Identifier can not be resolved!", n.f0);
		tempType = typeName;
	}
	
	private ImageIcon createImageIcon(String path, String description) {
		java.net.URL imgURL = getClass().getResource(path);
		if (imgURL != null) {
			return new ImageIcon(imgURL, description);
		} else {
			System.err.println("Couldn't find file: " + path);
			return null;
		}
	}
}
