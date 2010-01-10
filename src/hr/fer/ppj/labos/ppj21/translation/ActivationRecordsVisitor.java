package hr.fer.ppj.labos.ppj21.translation;

import java.util.*;
import hr.fer.ppj.labos.ppj21.syntaxtree.*;
import hr.fer.ppj.labos.ppj21.visitor.Visitor;

public class ActivationRecordsVisitor implements Visitor {

	final int WORDSIZE = 2;

	//All offsets and sizes are in bytes!
	Map<String, Integer> varOffset, constructSize;
	Map<String, ArrayList<String>> children;
	HashSet<String> added = new HashSet<String>();

	int offset;
	boolean inside;
	String curPath;

	public Map<String, Integer> getOffsets() {
		return varOffset;
	}

	public Map<String, ArrayList<String>> getChildren() {
		return children;
	}

	int getOffset(String varName) {
		if (!varOffset.containsKey((varName)))
			throw new Error("Variable not found: " + varName);
		return (varOffset.get(varName)).intValue();
	}

	void setOffset(String varName) {
		varOffset.put(varName, new Integer(offset));
		if (inside)
			offset -= WORDSIZE; //Set offset in stack
		else
			offset += WORDSIZE; //Set offset in heap
	}

	public Map<String, Integer> getSizes() {
		return constructSize;
	}

/*
	int getSize(String varName) {
		if (!constructSize.containsKey((varName)))
			throw new Error("Construct not found: " + varName);
		return (constructSize.get(varName)).intValue();
	}
*/

	void setSize(String construct, int size) {
		constructSize.put(construct, new Integer(size));
	}

	public void visit(NodeList n) throws Exception {
		for (Node it : n.nodes)
			it.accept(this);
	}

	public void visit(NodeListOptional n) throws Exception {
		if (n.present())
			for (Node it : n.nodes)
				it.accept(this);
	}

	public void visit(NodeOptional n) throws Exception {
		throw new Error("visit(NodeOptional) should not have been called!");
	}

	public void visit(NodeSequence n) throws Exception {
		throw new Error("visit(NodeSequence) should not have been called!");
	}

	public void visit(NodeToken n) throws Exception {
		throw new Error("visit(NodeToken) should not have been called!");
	}

	/**
	 * f0 -> MainClass()
	 * f1 -> ( ClassDecl() )*
	 * f2 -> <EOF>
	 */
	public void visit(Program n) throws Exception {
		inside = false;
		curPath = "";
		varOffset = new TreeMap<String, Integer>();
		constructSize = new TreeMap<String, Integer>();
		children = new TreeMap<String, ArrayList<String>>();
		(n.f0).accept(this);
		int oldAc = -1;
		while (oldAc < added.size()) {
			oldAc = added.size();
			(n.f1).accept(this);

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
		inside = true;
		offset = 0;
		children.put(((ID) n.f1).toString(), new ArrayList<String>());
		inside = false;
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
		String oldPath = curPath;
		offset = 0;
//		System.out.println("visiting " + n.f1.toString());
		if(added.contains(n.f1.f0.tokenImage))
			return;
//		System.out.println("visiting " + n.f1.toString());
		if (((NodeOptional) (n.f2)).present())
			if(!added.contains(((ID)((NodeSequence)n.f2.node).elementAt(1)).f0.tokenImage))
				return;

		curPath = n.f1.toString();



		children.put(((ID) n.f1).toString(), new ArrayList<String>());
//		System.out.println("children newed");
		if (((NodeOptional) (n.f2)).present()) {
//			if(!added.contains(((ID)((NodeSequence)n.f2.node).elementAt(1)).f0.tokenImage))
//				return;

			//Extends something ... copy their offsets!
			String parent = ((ID) (((NodeSequence) ((NodeOptional) (n.f2)).node)
					.elementAt(1))).toString();
			ArrayList<String> varsFromParent = new ArrayList<String>();
			for (String var : varOffset.keySet()) {
				if (var.endsWith(parent) && var.indexOf("@") > 0
						&& var.indexOf("@") == var.lastIndexOf("@"))
					varsFromParent.add((var.substring(0, var.indexOf("@"))
							+ "@" + curPath));
			}
			for (String it : varsFromParent)
				setOffset(it);

			//Remember that this is child of that!
//			System.out.println("parent = " + parent);
			children.get(parent).add(((ID) n.f1).toString());
		}
		//Visit global variable declarations
		n.f4.accept(this);

		//Set this class' size
		setSize(curPath, offset);

		added.add(n.f1.toString());

		//Visit the methods
		n.f5.accept(this);

		curPath = oldPath;

	}

	/**
	 * f0 -> Type()
	 * f1 -> ID()
	 * f2 -> ";"
	 */
	public void visit(VarDecl n) throws Exception {
		setOffset(n.f1 + "@" + curPath);
	}

	/**
	 * f0 -> <PUBLIC>
	 * f1 -> Type()
	 * f2 -> ID()
	 * f3 -> "("
	 * f4 -> [ VarDecl() ( "," VarDecl() )* ]
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
		String oldPath = curPath;
		curPath = n.f2 + "@" + curPath;
		inside = true;
		ArrayList<String> args = new ArrayList<String>();

		if (n.f4.present()) {
			//Method has arguments
			args.add(((VarDecl) ((NodeSequence) (n.f4.node)).elementAt(0)).f1
					.toString());
			if (((NodeListOptional) (((NodeSequence) (n.f4.node)).elementAt(1)))
					.present())
				for (Node it : ((NodeListOptional) (((NodeSequence) (n.f4.node))
						.elementAt(1))).nodes)
					args.add(((VarDecl) (((NodeSequence) it).elementAt(1))).f1
							.toString());
		}

		offset = WORDSIZE * (args.size() + 3);
		for (String argument : args)
			setOffset(argument + "@" + curPath);
		setOffset("this@" + curPath);
		setOffset("ret adr@" + curPath);
		setOffset("old fp@" + curPath);

		n.f7.accept(this);

		inside = false;
		setSize(curPath, -offset);
		curPath = oldPath;
	}

	/**
	 * f0 -> <INT> "[" "]" | <INT> | <BOOLEAN> | ID()
	 */
	public void visit(Type n) throws Exception {
		throw new Error("visit(Type) should not have been called!");
	}

	/**
	 * f0 -> "{" ( Statement() )* "}"
	 * | <IF> "(" Exp() ")" Statement() <ELSE> Statement()
	 * | <WHILE> "(" Exp() ")" Statement()
	 * | "System.out.println" "(" Exp() ")" ";"
	 * | ID() "=" Exp() ";"
	 * | ID() "[" Exp() "]" "=" Exp() ";"
	 */
	public void visit(Statement n) throws Exception {
		throw new Error("visit(Statement) should not have been called!");
	}

	/**
	 * f0 -> BoolExp()
	 * f1 -> ( "&&" BoolExp() )*
	 */
	public void visit(Exp n) throws Exception {
		throw new Error("visit(Exp) should not have been called!");
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
	 * | "." ID() "(" ( Exp() ( "," Exp() )* )? ")"
	 * | "[" Exp() "]"
	 */
	public void visit(MethodCall n) throws Exception {
	}

	/**
	 * f0 -> "(" Exp() ")" | ID() | <INTEGER_LITERAL>
	 * | <TRUE> | <FALSE> | <THIS>
	 */
	public void visit(Atom n) throws Exception {
		throw new Error("visit(Atom) should not have been called!");
	}

	/**
	 * f0 -> <IDENTIFIER>
	 */
	public void visit(ID n) throws Exception {
		throw new Error("visit(ID) should not have been called!");
	}

}
