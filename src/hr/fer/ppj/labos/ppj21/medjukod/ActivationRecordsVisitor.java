package hr.fer.ppj.labos.ppj21.medjukod;

import java.util.*;

import hr.fer.ppj.labos.ppj21.ast.*;
import hr.fer.ppj.labos.ppj21.visitor.Visitor;

public class ActivationRecordsVisitor implements Visitor {

	//16-bitni procesori
	final int WORDSIZE = 2;
	
	Map<String, Integer> varOffset, sizeOfConstruct;
	Map<String, ArrayList<String>> children;
	HashSet<String> addedClassesSet = new HashSet<String>();

	int offset;
	boolean insideMethod;
	String cPath;

	public void visit(NodeList n) throws Exception {
		for (Node it : n.nodes)
			it.accept(this);
	}

	public void visit(NodeListOptional n) throws Exception {
		if (n.present())
			for (Node it : n.nodes)
				it.accept(this);
	}

	/**
	 * f0 -> MainClass()
	 * f1 -> ( ClassDecl() )*
	 * f2 -> <EOF>
	 */
	public void visit(Program n) throws Exception {
		insideMethod = false;
		//inicijalizacija vrijednosti
		cPath = "";
		varOffset = new TreeMap<String, Integer>();
		sizeOfConstruct = new TreeMap<String, Integer>();
		children = new TreeMap<String, ArrayList<String>>();
		(n.f0).accept(this);
		int addedCountOld = -1;
		while (addedCountOld < addedClassesSet.size()) {
			addedCountOld = addedClassesSet.size();
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
		offset = 0;
		children.put(((ID) n.f1).toString(), new ArrayList<String>());
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
		String oldPath = cPath;
		offset = 0;
		//ukoliko je već razred dodan
		if(addedClassesSet.contains(n.f1.f0.tokenImage))
			return;
		//ukoliko extendani razred još nije obiđen
		if (((NodeOptional) (n.f2)).present())
			if(!addedClassesSet.contains(((ID)((NodeSequence)n.f2.node).elementAt(1)).f0.tokenImage))
				return;
		cPath = n.f1.toString();
		children.put(((ID) n.f1).toString(), new ArrayList<String>());
		//ako imamo extend, onda moramo prvo dohvatiti sve varijable koje nasljeđujemo i onda postaviti offsete
		if (((NodeOptional) (n.f2)).present()) {
			String parent = ((ID) (((NodeSequence) ((NodeOptional) (n.f2)).node).elementAt(1))).toString();
			ArrayList<String> parentVars = new ArrayList<String>();
			for (String var : varOffset.keySet()) {
				//dohvati sve varijable razreda (imaju samo jedan @ i završavaju kao extendana klasa)
				if (var.endsWith(parent) && var.indexOf("@") > 0 && var.indexOf("@") == var.lastIndexOf("@"))
					parentVars.add((var.substring(0, var.indexOf("@"))+ "@" + cPath));
			}
			for (String it : parentVars)
				setOffset(it);
			children.get(parent).add(((ID) n.f1).toString());
		}
		n.f4.accept(this);
		//postavlja se vrijednost trenutnog bloka
		setSize(cPath, offset);
		addedClassesSet.add(n.f1.toString());
		n.f5.accept(this);
		cPath = oldPath;
	}

	/**
	 * f0 -> Type()
	 * f1 -> ID()
	 * f2 -> ";"
	 */
	public void visit(VarDecl n) throws Exception {
		setOffset(n.f1 + "@" + cPath);
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
		String oldPath = cPath;
		cPath = n.f2 + "@" + cPath;
		//u metodi smo, varijable idu na stog
		insideMethod = true;
		ArrayList<String> methodArguments = new ArrayList<String>();
		//ako imamo argumente, moramo ih sve dodati u listu
		if (n.f4.present()) {
			methodArguments.add(((VarDecl) ((NodeSequence) (n.f4.node)).elementAt(0)).f1.toString());
			if (((NodeListOptional) (((NodeSequence) (n.f4.node)).elementAt(1))).present())
				for (Node it : ((NodeListOptional) (((NodeSequence) (n.f4.node)).elementAt(1))).nodes)
					methodArguments.add(((VarDecl) (((NodeSequence) it).elementAt(1))).f1.toString());
		}
		//offset postavljamo ovisno o broju argumenata
		offset = WORDSIZE * (methodArguments.size() + 3);
		for (String arg : methodArguments)
			setOffset(arg + "@" + cPath);
		//postavljaju se na stog još 3 dodatna parametra(this, povratna vrijednost i povratna adresa)
		setOffset("this@" + cPath);
		setOffset("ret adr@" + cPath);
		setOffset("old fp@" + cPath);
		n.f7.accept(this);
		insideMethod = false;
		setSize(cPath, -offset);
		cPath = oldPath;
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
		//ako smo unutar metode, varijable stavljamo na stog, inače idu na heap
		if (insideMethod)
			offset -= WORDSIZE;
		else
			offset += WORDSIZE;
	}

	public Map<String, Integer> getSizes() {
		return sizeOfConstruct;
	}
	
	void setSize(String construct, int size) {
		sizeOfConstruct.put(construct, new Integer(size));
	}
}
