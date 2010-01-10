
package hr.fer.ppj.labos.ppj21.typecheck;

import hr.fer.ppj.labos.ppj21.syntaxtree.*;
import hr.fer.ppj.labos.ppj21.visitor.Visitor;
import java.util.*;

/**
* Creates the symbol table, throws TypeExceptions if something is
* wrong (e.g. duplicated).
* One can now get the symbol table by the getSymbolTable() method.
* Symbol table is stored as a map "String -> String", which relates
* every identifier to its type.
*/
public class SymbolTableVisitor implements Visitor {

	private Map<String, String> symbolTable = new TreeMap<String, String>();
	private String currentPath, tempVar, tempType;

	//An extra data structure to remember visited classes
	private HashSet<String> added = new HashSet<String>();
	
	private boolean errorFlag;

	public Map<String, String> getSymbolTable() {
		return symbolTable;
	}

	public String toString(){
		String result = "";
		for (Iterator iter = symbolTable.keySet().iterator(); iter.hasNext();) {
			String element = (String) iter.next();
			result += element + " -> "+((String)symbolTable.get(element))+"\n";
		}
		return result;
	}

	public void visit(NodeList n) throws Exception {
	}
	public void visit(NodeListOptional n) throws Exception {
		if(n.present())
			for(Enumeration e = n.elements(); e.hasMoreElements();)
				((Node)e.nextElement()).accept(this);
	}
	public void visit(NodeOptional n) throws Exception {
	}
	public void visit(NodeSequence n) throws Exception {
	}
	public void visit(NodeToken n) throws Exception {
	}

	/**
	 * f0 -> MainClass()
	 * f1 -> ( ClassDecl() )*
	 * f2 -> <EOF>
	 */
	public void visit(Program n) throws Exception {
		//ac : Added Classes
		int ac = 0;
		errorFlag = false;
		int oldAc = -1;
		symbolTable.clear();
		added.clear();
		n.f0.accept(this);
		while(ac!=oldAc){
			oldAc = ac;
			n.f1.accept(this);
			ac = added.size();
		}
		if(n.f1.size()>ac){
			errorFlag = true;
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
		symbolTable.put(n.f1.f0.tokenImage, "mainclass");
		symbolTable.put(n.f1.f0.tokenImage+":main", "void(string[])");
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
		if(added.contains(n.f1.f0.tokenImage))
			return;
		if(n.f2.present()){
			if(!added.contains(((ID)((NodeSequence)n.f2.node).elementAt(1)).f0.tokenImage)){
				if (errorFlag)
					throw new TypeException("Cannot resolve class name", ((ID)(((NodeSequence)n.f2.node).nodes.elementAt(1))).f0);
				else
					return;
			}
			NodeSequence ns = ((NodeSequence)n.f2.node);
			String cname = ((ID)(ns.nodes.elementAt(1))).f0.tokenImage;
			Object[] iter = symbolTable.keySet().toArray();
			for (int i=0; i<iter.length; i++) {
				String element = (String) iter[i];
				if(element.startsWith(cname) && !element.equals(cname))
					symbolTable.put(element.replaceFirst(cname, n.f1.f0.tokenImage), symbolTable.get(element));
			}
		}
		if(symbolTable.containsKey(n.f1.f0.tokenImage))
			throw new TypeException("Duplicate Class definition!", n.f1.f0);
		symbolTable.put(n.f1.f0.tokenImage, "class");
		currentPath = n.f1.f0.tokenImage;
		n.f4.accept(this);
		n.f5.accept(this);
		added.add(n.f1.f0.tokenImage);
	}

	/**
	 * f0 -> Type()
	 * f1 -> ID()
	 * f2 -> ";"
	 */
	public void visit(VarDecl n) throws Exception {
		tempType = n.f0.typeName();
		tempVar = n.f1.f0.tokenImage;
		if(currentPath.split(":")[0].equals(tempVar))
			throw new TypeException("ID has the containing class name!", n.f1.f0);
		if(symbolTable.containsKey(currentPath+":"+tempVar))
			throw new TypeException("Duplicate variable definition!", n.f1.f0);
		symbolTable.put(currentPath+":"+tempVar, tempType);
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
		String resultVar = "", resultType = "", tempPath = currentPath;

		resultVar = n.f2.f0.tokenImage;
		resultType = n.f1.typeName();
		resultType += "(";
		currentPath += ":"+resultVar;

		if(symbolTable.containsKey(tempPath+":"+resultVar))
			throw new TypeException("Duplicate Method definition!", n.f2.f0);

		if(n.f4.present()){
			((VarDecl)((NodeSequence)n.f4.node).nodes.elementAt(0)).accept(this);
			resultType += tempType;
			if(((NodeListOptional)((NodeSequence)n.f4.node).nodes.elementAt(1)).present()){
				NodeListOptional nlo = ((NodeListOptional)((NodeSequence)n.f4.node).nodes.elementAt(1));
				for(Enumeration e = nlo.elements(); e.hasMoreElements(); ){
					((VarDecl)((NodeSequence)e.nextElement()).nodes.elementAt(1)).accept(this);
					resultType += ","+tempType;
				}
			}
		}
		resultType += ")";
		symbolTable.put(tempPath+":"+resultVar, resultType);

		n.f7.accept(this);

		tempType = resultType;
		tempVar = resultVar;
		currentPath = tempPath;
	}

	/**
	 * f0 -> <INT> "[" "]"
	 *       | <INT>
	 *       | <BOOLEAN>
	 *       | ID()
	 */
	public void visit(Type n) throws Exception {
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
	}

	/**
	 * f0 -> BoolExp()
	 * f1 -> ( "&&" BoolExp() )*
	 */
	public void visit(Exp n) throws Exception {
	}

	/**
	 * f0 -> MathExp()
	 * f1 -> ( "<" MathExp() )*
	 */
	public void visit(BoolExp n) throws Exception {
	}

	/**
	 * f0 -> Term()
	 * f1 -> ( ( "+" | "-" ) Term() )*
	 */
	public void visit(MathExp n) throws Exception {
	}

	/**
	 * f0 -> Factor()
	 * f1 -> ( "*" Factor() )*
	 */
	public void visit(Term n) throws Exception {
	}

	/**
	 * f0 -> ( "!" )*
	 * f1 -> ( <NEW> <INT> "[" Exp() "]" | <NEW> ID() "(" ")" | Atom() )
	 * f2 -> ( MethodCall() )*
	 */
	public void visit(Factor n) throws Exception {
	}

	/**
	 * f0 -> "." <LENGTH>
	 *       | "." ID() "(" ( Exp() ( "," Exp() )* )? ")"
	 *       | "[" Exp() "]"
	 */
	public void visit(MethodCall n) throws Exception {
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
	}

	/**
	 * f0 -> <IDENTIFIER>
	 */
	public void visit(ID n) throws Exception {
	}

}