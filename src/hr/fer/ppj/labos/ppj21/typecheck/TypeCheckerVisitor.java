
package hr.fer.ppj.labos.ppj21.typecheck;
import hr.fer.ppj.labos.ppj21.syntaxtree.*;
import hr.fer.ppj.labos.ppj21.visitor.Visitor;
import java.util.*;

/**
* Checks the type of each node, and throws meaningful exceptions.
* We must pass a symbol table to its constructor to start working.
*/
public class TypeCheckerVisitor implements Visitor {

	private Map<String, String> symbolTable;
	private String currentPath, tempType;
	boolean hadTypeCheckError;

	public TypeCheckerVisitor(Map<String, String> symbolTable) {
		this.symbolTable = symbolTable;
	}

	public void setSymbolTable(Map<String, String> symbolTable) {
		this.symbolTable = symbolTable;
	}

	public String toString(){
		String result = "";

		for (Iterator iter = symbolTable.keySet().iterator(); iter.hasNext();) {
			String element = (String) iter.next();
			result += element+" -> "+((String)symbolTable.get(element))+"\n";
		}

		return result;
	}

	public String getType(String varName){
		return getType(symbolTable, varName, currentPath);
	}

	public static String getType(Map<String, String> symbolTable, String varName, String currentPath){
		String tempPath = currentPath;
		while(tempPath.length()>0){
			if(symbolTable.containsKey(tempPath+":"+varName))
				return (String)symbolTable.get(tempPath+":"+varName);
			int itemp = tempPath.lastIndexOf(":");
			tempPath = tempPath.substring(0, (itemp==-1?0:itemp));
		}
		return (String)symbolTable.get(varName);
	}

	public void visit(NodeList n) throws Exception {
		for(Enumeration e = n.elements(); e.hasMoreElements();)
			((Node)e.nextElement()).accept(this);
	}

	public void visit(NodeListOptional n) throws Exception {
		if(n.present())
			for(Enumeration e = n.elements(); e.hasMoreElements();)
				((Node)e.nextElement()).accept(this);
	}

	public void visit(NodeOptional n) throws Exception {
		if(n.present())
			n.node.accept(this);
	}

	public void visit(NodeSequence n) throws Exception {
		for(Enumeration e = n.nodes.elements(); e.hasMoreElements();)
			((Node)e.nextElement()).accept(this);
	}

	public void visit(NodeToken n) throws Exception {
	}

	/**
	 * f0 -> MainClass()
	 * f1 -> ( ClassDecl() )*
	 * f2 -> <EOF>
	 */
	public void visit(Program n) throws Exception {
		hadTypeCheckError = false;
		currentPath = "";
		n.f0.accept(this);
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
		currentPath = n.f1.f0.tokenImage;
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
		currentPath = n.f1.f0.tokenImage;
		n.f4.accept(this);
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
		currentPath += ":"+n.f2.f0.tokenImage;

		n.f4.accept(this);
		n.f7.accept(this);
		n.f8.accept(this);

		try {
			n.f10.accept(this);
			if(!tempType.equals(n.f1.typeName()))
				throw new TypeException("Invalid return Type!", n.f9);
		} catch (Exception e) {
			hadTypeCheckError = true;
			System.out.println(e.getMessage());
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
		if(n.f0.which==3){
			String typeName = (String) symbolTable.get(((ID)n.f0.choice).f0.tokenImage);
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
					n.f0.choice.accept(this);
					break;
				case 1:
					Vector v1 = ((NodeSequence)n.f0.choice).nodes;
					((Node)v1.elementAt(2)).accept(this);
					if(!tempType.equals("boolean"))
						throw new TypeException("If just takes boolean conditions!", (NodeToken)v1.elementAt(0));
					((Node)v1.elementAt(4)).accept(this);
					((Node)v1.elementAt(6)).accept(this);
					break;
				case 2:
					Vector v2 = ((NodeSequence)n.f0.choice).nodes;
					((Node)v2.elementAt(2)).accept(this);
					if(!tempType.equals("boolean"))
						throw new TypeException("While just takes boolean conditions!", (NodeToken)v2.elementAt(0));
					((Node)v2.elementAt(4)).accept(this);
					break;
				case 3:
					Vector v3 = ((NodeSequence)n.f0.choice).nodes;
					((Node)v3.elementAt(2)).accept(this);
					if(!tempType.equals("int") && !tempType.equals("boolean") && !tempType.equals("string"))
						throw new TypeException("Cannot print this type!", (NodeToken)v3.elementAt(1));
					break;
				case 4:
					Vector v4 = ((NodeSequence)n.f0.choice).nodes;
					((Node)v4.elementAt(0)).accept(this);
					idType = tempType;
					if(idType.equals("class") || idType.equals("mainclass"))
						throw new TypeException("Class names can not be L-value!", (NodeToken)v4.elementAt(1));
					if(idType.indexOf('(')!=-1)
						throw new TypeException("Method names can not be L-value!", (NodeToken)v4.elementAt(1));
					((Node)v4.elementAt(2)).accept(this);
					if(!tempType.equals(idType))
						throw new TypeException("Type mismatch in assignment!", (NodeToken)v4.elementAt(1));
					break;
				case 5:
					Vector v5 = ((NodeSequence)n.f0.choice).nodes;
					((Node)v5.elementAt(0)).accept(this);
					idType = tempType;
					if(idType.indexOf('[')==-1)
						throw new TypeException("No array is found before \"[\"", (NodeToken)v5.elementAt(1));
					((Node)v5.elementAt(2)).accept(this);
					if(!tempType.equals("int"))
						throw new TypeException("Index should be an integer value!", (NodeToken)v5.elementAt(1));
					((Node)v5.elementAt(5)).accept(this);
					if(!idType.startsWith(tempType))
						throw new TypeException("Type mismatch in assignment", (NodeToken)v5.elementAt(4));
					break;
			}
		} catch (Exception e) {
			hadTypeCheckError = true;
			System.out.println(e.getMessage());
		}
	}

	/**
	 * f0 -> BoolExp()
	 * f1 -> ( "&&" BoolExp() )*
	 */
	public void visit(Exp n) throws Exception {
		n.f0.accept(this);
		if(n.f1.present()){
			if(!tempType.equals("boolean"))
				throw new TypeException("Logical and needs two boolean expressions!", (NodeToken)((NodeSequence)n.f1.nodes.elementAt(0)).nodes.elementAt(0));
			for(Enumeration e = n.f1.elements(); e.hasMoreElements();){
				Vector ns = ((NodeSequence)e.nextElement()).nodes;
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
		if(n.f1.present()){
			if(!tempType.equals("int"))
				throw new TypeException("Only integer values can be compared!", (NodeToken)((NodeSequence)(n.f1.nodes.elementAt(0))).nodes.elementAt(0));
			for(Enumeration e = n.f1.elements(); e.hasMoreElements();){
				Vector ns = ((NodeSequence)e.nextElement()).nodes;
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
		if(n.f1.present()){
			if(!tempType.equals("int"))
				throw new TypeException("Only integer values can be added or subtracted!", (NodeToken)((NodeChoice)((NodeSequence)(n.f1.nodes.elementAt(0))).nodes.elementAt(0)).choice);
			for(Enumeration e = n.f1.elements(); e.hasMoreElements();){
				Vector ns = ((NodeSequence)e.nextElement()).nodes;
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
		if(n.f1.present()){
			if(!tempType.equals("int"))
				throw new TypeException("Only integer values can be multiplied!", (NodeToken)((NodeSequence)(n.f1.nodes.elementAt(0))).nodes.elementAt(0));
			for(Enumeration e = n.f1.elements(); e.hasMoreElements();){
				Vector ns = ((NodeSequence)e.nextElement()).nodes;
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
		if(n.f0.present()){
			if(n.f1.which!=2)
				throw new TypeException("\"new\" operator can not be \"not\"ed!", (NodeToken)n.f0.nodes.lastElement());
			n.f1.choice.accept(this);
			if(tempType.equals("int") || tempType.equals("int[]") || tempType.equals("string[]"))
				throw new TypeException("Invalid type for logical not operator", (NodeToken)n.f0.nodes.lastElement());
		} else {
			if(n.f1.which==0){
				((Node)((NodeSequence)n.f1.choice).nodes.elementAt(3)).accept(this);
				if(!tempType.equals("int"))
					throw new TypeException("\"new\" operator index should be an integer value!", (NodeToken)((NodeSequence)n.f1.choice).nodes.elementAt(2));
				tempType = "int[]";
			} else if(n.f1.which==1) {
				((Node)((NodeSequence)n.f1.choice).nodes.elementAt(1)).accept(this);
				if(!tempType.equals("class"))
					throw new TypeException("Cannot new this type!", (NodeToken)((NodeSequence)n.f1.choice).nodes.elementAt(2));
				tempType = ((ID)((NodeSequence)n.f1.choice).nodes.elementAt(1)).f0.tokenImage;
			} else
				n.f1.choice.accept(this);
		}
		n.f2.accept(this);
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
			if(tempType.indexOf('[')==-1)
				throw new TypeException("Length is only used for arrays!", (NodeToken)((NodeSequence)n.f0.choice).nodes.elementAt(1));
			tempType = "int";
		} else if(n.f0.which==1) {
			Vector v = ((NodeSequence)n.f0.choice).nodes;
			if(tempType.equals("int") || tempType.equals("int[]") || tempType.equals("boolean") || tempType.equals("string") || tempType.equals("string[]"))
				throw new TypeException("Cannot invoke a method through primitives!", (NodeToken)v.elementAt(0));
			String tempMethod = (String)symbolTable.get(tempType + ":" + ((ID)v.elementAt(1)).f0.tokenImage);
			if(tempMethod==null)
				throw new TypeException("Cannot resolve method name!", (NodeToken)v.elementAt(0));

			NodeOptional no = (NodeOptional)v.elementAt(3);
			if(no.present()){
				String tempCall = tempMethod.split("[(]")[0] + "(";
				((Node)((NodeSequence)no.node).nodes.elementAt(0)).accept(this);
				tempCall += tempType;
				NodeListOptional nol = ((NodeListOptional)((NodeSequence)no.node).nodes.elementAt(1));
				if(nol.present())
					for(Enumeration e = nol.elements(); e.hasMoreElements();){
						((Node)((NodeSequence)e.nextElement()).nodes.elementAt(1)).accept(this);
						tempCall += "," + tempType;
					}
				tempCall += ")";
				if(!tempCall.equals(tempMethod))
					throw new TypeException("Method signature is wrong!", (NodeToken)v.elementAt(2));
			} else if(tempMethod.indexOf(")")-tempMethod.indexOf("(")!=1)
				throw new TypeException("No arguments found for this method!", (NodeToken)v.elementAt(2));

			tempType = tempMethod.split("[(]")[0];
		} else {
			if(tempType.indexOf('[')==-1)
				throw new TypeException("No array is found before \"[\" !", (NodeToken)((NodeSequence)n.f0.choice).nodes.elementAt(0));
			n.f0.choice.accept(this);
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
				n.f0.choice.accept(this);
				break;
			case 2:
				tempType = "int";
				break;
			case 3:
			case 4:
				tempType = "boolean";
				break;
			case 5:
				tempType = currentPath.split(":")[0];
				break;
		}
	}

	/**
	 * f0 -> <IDENTIFIER>
	 */
	public void visit(ID n) throws Exception {
		String typeName = getType(n.f0.tokenImage);
		if(typeName == null)
			throw new TypeException("Identifier can not be resolved!", n.f0);

		tempType = typeName;
	}
}
