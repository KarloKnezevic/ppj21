
package hr.fer.ppj.labos.ppj21.semantika;

import hr.fer.ppj.labos.ppj21.ast.*;
import hr.fer.ppj.labos.ppj21.visitor.Visitor;
import java.util.*;

/**
 * Stvara tablicu simbola, kojoj se može pristupiti metodom getSymbolTable().
 * Ujedno, provjerava da nema dvostrukih deklaracija varijabli, da su sve ispravno nazvane i slično.
 */
public class SymbolTableFillingVisitor implements Visitor {

	private Map<String, String> symTable = new TreeMap<String, String>();
	private String cPath, tVar, tType;
	private HashSet<String> classesAddedSet = new HashSet<String>();
	private boolean errorEncountered;

	public Map<String, String> getSymbolTable() {
		return symTable;
	}

	public void visit(NodeList n) throws Exception {}
	public void visit(NodeOptional n) throws Exception {}
	public void visit(NodeSequence n) throws Exception {}
	public void visit(NodeToken n) throws Exception {}
	
	public void visit(NodeListOptional n) throws Exception {
		if(n.present())
			for(Enumeration<Node> e = n.elements(); e.hasMoreElements();)
				((Node)e.nextElement()).accept(this);
	}

	/**
	 * f0 -> MainClass()
	 * f1 -> ( ClassDecl() )*
	 * f2 -> <EOF>
	 */
	public void visit(Program n) throws Exception {
		//briše se tablica simbola, počinje stvaranje iznova
		int addedCount = 0;
		errorEncountered = false;
		int addedCountOld = -1;
		symTable.clear();
		classesAddedSet.clear();
		//prihvati main klasu (mora biti na prvom mjestu)
		n.f0.accept(this);
		//dok god ima novih razreda za dodati, dodaj ih
		while(addedCount!=addedCountOld){
			addedCountOld = addedCount;
			n.f1.accept(this);
			addedCount = classesAddedSet.size();
		}
		if(n.f1.size()>addedCount){
			errorEncountered = true;
			visit(n.f1);
		}
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
		//dohvaća se main razred i sprema u tablicu simbola
		symTable.put(n.f1.f0.tokenImage, "mainclass");
		//dohvaća se metoda main i sprema u tablicu simbola
		symTable.put(n.f1.f0.tokenImage+":main", "void(string[])");
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
		//ukoliko je već dodan taj razred, vrati se
		if(classesAddedSet.contains(n.f1.f0.tokenImage))
			return;
		//ako razred extenda neki drugi
		if(n.f2.present()){
			//ako već nije dodan extendani razred, pokušaj ga dodati
			if(!classesAddedSet.contains(((ID)((NodeSequence)n.f2.node).elementAt(1)).f0.tokenImage)){
				if (errorEncountered)
					throw new TypeException("Cannot resolve class name", ((ID)(((NodeSequence)n.f2.node).nodes.elementAt(1))).f0);
				else
					return;
			}
			NodeSequence ns = ((NodeSequence)n.f2.node);
			//ime razreda koji je extendan
			String extendedClassName = ((ID)(ns.nodes.elementAt(1))).f0.tokenImage;
			Object[] it = symTable.keySet().toArray();
			for (int i=0; i<it.length; i++) {
				//svim za sve metode i varijable koje se nalaze u naslijeđenom razredu, napravi kopije za trenutan razred
				String e = (String)it[i];
				if(e.startsWith(extendedClassName) && !e.equals(extendedClassName))
					symTable.put(e.replaceFirst(extendedClassName, n.f1.f0.tokenImage), symTable.get(e));
			}
		}
		//ukoliko već postoji, javi grešku
		if(symTable.containsKey(n.f1.f0.tokenImage))
			throw new TypeException("Duplicate Class definition!", n.f1.f0);
		symTable.put(n.f1.f0.tokenImage, "class");
		//trenutni path postavi na ime klase
		cPath = n.f1.f0.tokenImage;
		//deklaracije varijabli i metoda
		n.f4.accept(this);
		n.f5.accept(this);
		classesAddedSet.add(n.f1.f0.tokenImage);
	}

	/**
	 * f0 -> Type()
	 * f1 -> ID()
	 * f2 -> ";"
	 */
	public void visit(VarDecl n) throws Exception {
		tType = n.f0.typeName();
		tVar = n.f1.f0.tokenImage;
		//provjerava se ima li varijabla ime jednako razredu ili nekoj već definiranoj varijabli u metodi
		if(cPath.split(":")[0].equals(tVar))
			throw new TypeException("ID has the containing class name!", n.f1.f0);
		if(symTable.containsKey(cPath+":"+tVar))
			throw new TypeException("Duplicate variable definition!", n.f1.f0);
		//dodaje se nova varijabla u tablicu simbola sa ključem u formatu: razred:metoda:varijabla
		symTable.put(cPath+":"+tVar, tType);
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
		String rVar = "", rType = "", tPath = cPath;
		//ime metode
		rVar = n.f2.f0.tokenImage;
		//povratni tip
		rType = n.f1.typeName();
		rType += "(";
		cPath += ":"+rVar;

		if(symTable.containsKey(tPath+":"+rVar))
			throw new TypeException("Duplicate Method definition!", n.f2.f0);
		//ako postoje argumenti metode
		if(n.f4.present()){
			//gledaj te metode kao deklaracije varijabli
			((VarDecl)((NodeSequence)n.f4.node).nodes.elementAt(0)).accept(this);
			rType += tType;
			if(((NodeListOptional)((NodeSequence)n.f4.node).nodes.elementAt(1)).present()){
				NodeListOptional nlo = ((NodeListOptional)((NodeSequence)n.f4.node).nodes.elementAt(1));
				//dodaj sve argumente u varijablu retType
				for(Enumeration<Node> e = nlo.elements(); e.hasMoreElements(); ){
					((VarDecl)((NodeSequence)e.nextElement()).nodes.elementAt(1)).accept(this);
					rType += ","+tType;
				}
			}
		}
		//varijabla rType ima format: povratni_tip(tipovi,argumenata)
		rType += ")";
		symTable.put(tPath+":"+rVar, rType);
		//deklaracije varijabli unutar metode
		n.f7.accept(this);
		tType = rType;
		tVar = rVar;
		cPath = tPath;
	}

	/**
	 * f0 -> <INT> "[" "]"
	 *       | <INT>
	 *       | <BOOLEAN>
	 *       | ID()
	 */
	public void visit(Type n) throws Exception {}

	/**
	 * f0 -> "{" ( Statement() )* "}"
	 *       | <IF> "(" Exp() ")" Statement() <ELSE> Statement()
	 *       | <WHILE> "(" Exp() ")" Statement()
	 *       | "System.out.println" "(" Exp() ")" ";"
	 *       | ID() "=" Exp() ";"
	 *       | ID() "[" Exp() "]" "=" Exp() ";"
	 */
	public void visit(Statement n) throws Exception {}

	/**
	 * f0 -> BoolExp()
	 * f1 -> ( "&&" BoolExp() )*
	 */
	public void visit(Exp n) throws Exception {}

	/**
	 * f0 -> MathExp()
	 * f1 -> ( "<" MathExp() )*
	 */
	public void visit(BoolExp n) throws Exception {}

	/**
	 * f0 -> Term()
	 * f1 -> ( ( "+" | "-" ) Term() )*
	 */
	public void visit(MathExp n) throws Exception {}

	/**
	 * f0 -> Factor()
	 * f1 -> ( "*" Factor() )*
	 */
	public void visit(Term n) throws Exception {}

	/**
	 * f0 -> ( "!" )*
	 * f1 -> ( <NEW> <INT> "[" Exp() "]" | <NEW> ID() "(" ")" | Atom() )
	 * f2 -> ( MethodCall() )*
	 */
	public void visit(Factor n) throws Exception {}

	/**
	 * f0 -> "." <LENGTH>
	 *       | "." ID() "(" ( Exp() ( "," Exp() )* )? ")"
	 *       | "[" Exp() "]"
	 */
	public void visit(MethodCall n) throws Exception {}

	/**
	 * f0 -> "(" Exp() ")"
	 *       | ID()
	 *       | <INTEGER_LITERAL>
	 *       | <TRUE>
	 *       | <FALSE>
	 *       | <THIS>
	 */
	public void visit(Atom n) throws Exception {}

	/**
	 * f0 -> <IDENTIFIER>
	 */
	public void visit(ID n) throws Exception {}

}