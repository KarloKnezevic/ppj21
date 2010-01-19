package hr.fer.ppj.labos.ppj21.medjukod;

import java.util.*;

import hr.fer.ppj.labos.ppj21.ast.*;
import hr.fer.ppj.labos.ppj21.tree.*;
import hr.fer.ppj.labos.ppj21.visitor.*;

public class IRTranslationVisitor implements ObjectVisitor {

	final Expr SP = new Temp("sp");
	final Expr FP = new Temp("fp");
	final Expr DR = new Temp("d1");
	final Expr AR = new Temp("a1");
	final Expr HP = new Temp("hp");
	final Expr TR = new Temp("TR");
	final char LABEL_SEPERATOR = '_';
	
	final int LAST_STACK = 0xFFFE;
	final int WORDSIZE = 2;
	final int FIRST_HEAP = 0xE100;
	int labelCounter;
	String cClass, cMethod, curType;
	Map<String, Integer> varOffset, constructSize;
	Map<String, String> symTable;
	Map<String, ArrayList<String>> children;

	public IRTranslationVisitor(Map<String, Integer> varOffset, Map<String, Integer> constructSize, Map<String, String> symTable, Map<String, ArrayList<String>> children) {
		this.varOffset = varOffset;
		this.children = children;
		this.constructSize = constructSize;
		this.symTable = symTable;
		labelCounter = 1;
	}

	public Object visit(NodeList n, Object argu) throws Exception {
		throw new Error(
				" visit(NodeList n, Object argu) should not have been called!");
	}

	public Stm visit(NodeList n) throws Exception {
		Stm s = null;
		for (Node it : n.nodes) {
			Stm next = (Stm) it.accept(this, null);
			if (next!= null)
				s = add(s, next);
		}
		return s;
	}

	public Object visit(NodeListOptional n, Object argu) throws Exception {
		throw new Error(
				"visit(NodeListOptionaln,Object argu) should not have been called!");
	}

	public Stm visit(NodeListOptional n) throws Exception {
		Stm s = null;
		if (n.present())
			for (Node it : n.nodes) {
				Stm next = (Stm) it.accept(this, null);
				if (next!= null)
					s = add(s, next);
			}
		return s;
	}

	public Object visit(NodeOptional n, Object argu) throws Exception {
		throw new Error(
				"visit(NodeOptional, Object argu) should not have been called!");
	}

	public Object visit(NodeSequence n, Object argu) throws Exception {
		throw new Error(
				"visit(NodeSequence, Object argu) should not have been called!");
	}

	public Object visit(NodeToken n, Object argu) throws Exception {
		throw new Error(
				"visit(NodeToken, Object argu) should not have been called!");
	}

	/**
	 * f0 -> MainClass()
	 * f1 -> ( ClassDecl() )*
	 * f2 -> <EOF>
	 */
	public Stm visit(Program n, Object argu) throws Exception {
		cMethod = cClass = "";
		Stm res = (Stm) (n.f0.accept(this, null));
		res = add(res, visit(n.f1));
		return res;
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
	public Stm visit(MainClass n, Object argu) throws Exception {
		Stm res = new Label("MAIN");
		cClass = n.f1.toString();
		cMethod = "main";
		res = add(res, new Move(HP, new Const(FIRST_HEAP + WORDSIZE)));
		res = add(res, new Move(FP, new Const(LAST_STACK - WORDSIZE)));
		res = add(res, new Move(SP, FP));
		res = add(res, (Stm) (n.f14.accept(this, null)));
		res = add(res, new Label("DONE"));
		cClass = cMethod = "";
		return res;
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
	public Stm visit(ClassDecl n, Object argu) throws Exception {
		cClass = n.f1.toString();
		Stm res = visit(n.f5);
		cClass = "";
		return res;
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

	public Stm visit(MethodDecl n, Object argu) throws Exception {
		cMethod = n.f2.toString();
		Stm res = new Label(cClass + LABEL_SEPERATOR + cMethod);
		for (String child : getAllChildren(cClass))
			res = add(res, new Label(child + LABEL_SEPERATOR + cMethod));
		res = add(res, new Move(FP, SP));
		int size = getSize(cMethod + "@" + cClass) / WORDSIZE;
		for (int i = 0; i < size; i++)
			res = add(res, push(new Const(0)));
		res = add(res, visit(n.f8));
		res = add(res, new Move(DR, (Expr) n.f10.accept(this, null)));
		if (size > 0)
			res = add(res, pop(size));
		res = add(res, new Move(AR, getLocal("ret adr")));
		res = add(res, new Move(FP, getLocal("old fp")));
		res = add(res, new Jump(AR));
		cMethod = "";
		return res;
	}

	/**
	 * f0 -> Type()
	 * f1 -> ID()
	 * f2 -> ";"
	 */
	public Object visit(VarDecl n, Object argu) throws Exception {
		throw new Error(
				"visit(VarDecl, Object argu) should not have been called!");
	}

	/**
	 * f0 -> <INT> "[" "]"
	 *       | <INT>
	 *       | <BOOLEAN>
	 *       | ID()
	 */
	public Object visit(Type n, Object argu) throws Exception {
		throw new Error("visit(Type, Object argu) should not have been called!");
	}

	/**
	 * f0 -> "{" ( Statement() )* "}"
	 *       | <IF> "(" Exp() ")" Statement() <ELSE> Statement()
	 *       | <WHILE> "(" Exp() ")" Statement()
	 *       | "System.out.println" "(" Exp() ")" ";"
	 *       | ID() "=" Exp() ";"
	 *       | ID() "[" Exp() "]" "=" Exp() ";"
	 */
	public Stm visit(Statement n, Object argu) throws Exception {
		NodeSequence ns = (NodeSequence) (n.f0.choice);
		switch (n.f0.which) {
		case 0:
			return visit((NodeListOptional) ns.elementAt(1));
		case 1:
			return ifThenElse((Expr) ns.elementAt(2).accept(this, null),
					(Stm) ns.elementAt(4).accept(this, null), (Stm) ns
							.elementAt(6).accept(this, null));
		case 2:
			return whileDo((Expr) ns.elementAt(2).accept(this, null), (Stm) ns
					.elementAt(4).accept(this, null));
		case 3:
			return new Out((Expr) ns.elementAt(2).accept(this, null));
		case 4:
			return new Move((Expr) (ns.elementAt(0).accept(this, null)),
					(Expr) ns.elementAt(2).accept(this, null));
		case 5:
			return new Move(arrayIndex((Expr) ns.elementAt(0)
					.accept(this, null), (Expr) ns.elementAt(2).accept(this,
					null), (NodeToken) ns.elementAt(1)), (Expr) ns.elementAt(5)
					.accept(this, null));
		default:
			throw new Error("Statement format unknown!");
		}
	}

	/**
	 * f0 -> BoolExp()
	 * f1 -> ( "&&" BoolExp() )*
	 */
	public Expr visit(Exp n, Object argu) throws Exception {
		Expr e0 = (Expr) n.f0.accept(this);
		if (n.f1.present())
			for (Node it : n.f1.nodes)
				e0 = new Binop(Binop.AND, e0, (Expr) (((NodeSequence) it)
						.elementAt(1).accept(this, null)));
		return e0;
	}

	/**
	 * f0 -> MathExp()
	 * f1 -> ( "<" MathExp() )*
	 */
	public Expr visit(BoolExp n, Object argu) throws Exception {
		Expr e0 = (Expr) n.f0.accept(this);
		if (n.f1.present())
			for (Node it : n.f1.nodes)
				e0 = new Binop(Binop.LT, e0, (Expr) (((NodeSequence) it)
						.elementAt(1).accept(this, null)));
		return e0;
	}

	/**
	 * f0 -> Term()
	 * f1 -> ( ( "+" | "-" ) Term() )*
	 */
	public Expr visit(MathExp n, Object argu) throws Exception {
		Expr e0 = (Expr) n.f0.accept(this);
		if (n.f1.present())
			for (Node it : n.f1.nodes) {
				NodeChoice operator = (NodeChoice) ((NodeSequence) it)
						.elementAt(0);
				Term term = (Term) ((NodeSequence) it).elementAt(1);
				if (operator.which == 0)
					e0 = new Binop(Binop.PLUS, e0, (Expr) term.accept(this,
							null));
				else
					e0 = new Binop(Binop.MINUS, e0, (Expr) term.accept(this,
							null));
			}
		return e0;
	}

	/**
	 * f0 -> Factor()
	 * f1 -> ( "*" Factor() )*
	 */
	public Expr visit(Term n, Object argu) throws Exception {
		Expr e0 = (Expr) n.f0.accept(this);
		if (n.f1.present())
			for (Node it : n.f1.nodes)
				e0 = new Binop(Binop.MUL, e0, (Expr) (((NodeSequence) it)
						.elementAt(1).accept(this, null)));
		return e0;
	}

	/**
	 * f0 -> ( "!" )*
	 * f1 -> ( <NEW> <INT> "[" Exp() "]" | <NEW> ID() "(" ")" | Atom() )
	 * f2 -> ( MethodCall() )*
	 */
	public Expr visit(Factor n, Object argu) throws Exception {
		Expr object;
		Stm alloc = null;
		switch (((NodeChoice) n.f1).which) {
		case 0:
			Expr size = (Expr) ((NodeSequence) (((NodeChoice) n.f1).choice))
					.elementAt(3).accept(this, null);
			alloc = allocateInstrs(new Binop(Binop.PLUS, new Const(0),
					size), true);
			object = AR;
			curType = "int[]";
			break;
		case 1:
			String name = ((ID) (((NodeSequence) (((NodeChoice) n.f1).choice))
					.elementAt(1))).toString();
			alloc = allocateInstrs((new Const(getSize(name) / WORDSIZE)),
					false);
			object = AR;
			curType = name;
			break;
		case 2:
			object = (Expr) (n.f1.choice).accept(this, null);
			break;
		default:
			throw new Error("This is impossible case in visit factor!");
		}

		Stm mci = alloc;

		if (n.f2.present())
			for (Node mc : ((NodeListOptional) n.f2).nodes) {
				ESeq es = (ESeq) mc.accept(this, object);
				mci = add(mci, es.stm);
				object = es.exp;
			}
		if (mci != null)
			object = new ESeq(mci, object);
		if (n.f0.present() && n.f0.nodes.size() % 2 == 1)
			return not(object);
		else
			return object;
	}

	/**
	 * f0 -> "." <LENGTH>
	 *       | "." ID() "(" ( Exp() ( "," Exp() )* )? ")"
	 *       | "[" Exp() "]"
	 */
	public Expr visit(MethodCall n, Object argu) throws Exception {
		Expr object = (Expr) argu;
		NodeSequence ns = (NodeSequence) n.f0.choice;
		Stm check;
		check = ifThen(isZero(object), rte("NullPointer", (NodeToken) ns
				.elementAt(0)));

		switch (n.f0.which) {
		case 0:
			curType = "int";
			return new ESeq(check, new Mem(object));
		case 1:
			Stm s = check;
			String name = ((ID) ns.elementAt(1)).toString();
			String labelName = curType + LABEL_SEPERATOR + name;
			String methodType = getType(curType + ":" + name);

			ArrayList<Expr> argList = new ArrayList<Expr>();
			NodeOptional nc = (NodeOptional) ns.elementAt(3);
			if (nc.present()) {
				argList.add(((Expr) ((NodeSequence) nc.node).elementAt(0)
						.accept(this, null)));
				if (((NodeListOptional) ((NodeSequence) nc.node).elementAt(1))
						.present()) {
					for (Node it : ((NodeListOptional) ((NodeSequence) nc.node)
							.elementAt(1)).nodes) {
						argList.add((Expr) (((NodeSequence) it).elementAt(1)
								.accept(this, null)));
					}
				}
			}

			for (Expr e : argList)
				s = add(s, push(e));
			s = add(s, push(object));
			Label retAdr = getNextLabel();
			s = add(s, push(new Name(retAdr)));
			s = add(s, push(FP));
			s = add(s, new Jump(new Name(new Label(labelName))));
			s = add(s, retAdr);
			s = add(s, pop(argList.size() + 3));
			object = DR;
			curType = (methodType.split("[(]"))[0];
			return new ESeq(s, DR);
		case 2:
			curType = "int";
			return arrayIndex(object,
					(Expr) ns.elementAt(1).accept(this, null), (NodeToken) ns
							.elementAt(0));
		default:
			throw new Error("This is impossible in visit(MethodCall)");
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
	public Expr visit(Atom n, Object argu) throws Exception {
		Node node = (((NodeChoice) n.f0).choice);
		switch (((NodeChoice) n.f0).which) {
		case 0:
			return (Expr) ((NodeSequence) node).elementAt(1).accept(this, null);
		case 1:
			return (Expr) (node.accept(this, null));
		case 2:
			return new Const(Integer.parseInt(((NodeToken) node).tokenImage));
		case 3:
			return new Const(1);
		case 4:
			return new Const(0);
		case 5:
			curType = cClass;
			return getThis();
		default:
			throw new Error("This is impossible in visit(Atom)!");
		}
	}

	/**
	 * f0 -> <IDENTIFIER>
	 */
	public Expr visit(ID n, Object argu) throws Exception {
		String name = n.toString();
		if (varOffset.keySet().contains(name + "@" + cMethod + "@" + cClass)) {
			curType = getType(cClass + ":" + cMethod + ":" + name);
			return getLocal(name);
		} else if (varOffset.keySet().contains(name + "@" + cClass)) {
			curType = getType(cClass + ":" + name);
			return getField(name);
		} else
			throw new Error("Variable " + name + " not found at line "
					+ n.f0.beginLine + " column " + n.f0.beginColumn);
	}
	
	Label getNextLabel() {
		return new Label("L" + labelCounter++);
	}

	public Expr isZero(Expr e) {
		return new Binop(Binop.AND,
				new Binop(Binop.LT, e, new Const(1)),
				new Binop(Binop.LT, new Const(-1), e));
	}

	int getOffset(String varName) {
		if (!varOffset.containsKey((varName)))
			throw new Error("Variable not found: " + varName);
		return (varOffset.get(varName)).intValue();
	}

	int getSize(String constructName) {
		if (!constructSize.containsKey((constructName)))
			throw new Error("Construct not found: " + constructName);
		return (constructSize.get(constructName)).intValue();
	}

	String getType(String className) {
		if (!symTable.keySet().contains((className)))
			throw new Error("Class " + className + " not found!");
		return symTable.get(className);
	}

	ArrayList<String> getAllChildren(String className) {
		ArrayList<String> c = children.get(className);
		ArrayList<String> result = new ArrayList<String>();
		for (String child : c) {
			result.add(child);
			result.addAll(getAllChildren(child));
		}
		return result;
	}
	
	Stm add(Stm a, Stm b) {
		if (a == null && b == null)
			throw new Error("Both are null!");
		else if (a != null && b != null)
			return new Seq(a, b);
		else if (a != null)
			return a;
		else
			return b;
	}

	Stm addConst(Expr e, int x) {
		return new Move(e, new Binop(Binop.PLUS, new Const(x), e));
	}

	Stm push(Expr e) {
		return add(new Move(new Mem(SP), e), addConst(SP, -WORDSIZE));
	}

	Stm pop() {
		return addConst(SP, WORDSIZE);
	}

	Stm pop(int k) {
		return addConst(SP, WORDSIZE * k);
	}

	Expr not(Expr e) {
		return new Binop(Binop.MINUS, new Const(1), e);
	}

	Expr getThis() {
		return getLocal("this");
	}

	Expr getLocal(String localName) {
		String name = localName + "@" + cMethod + "@" + cClass;
		if (!varOffset.containsKey((name)))
			throw new Error("Local not found: " + name);
		return new Mem(new Binop(Binop.PLUS, FP, new Const(getOffset(name))));
	}

	Expr getField(String fieldName) {
		String name = fieldName + "@" + cClass;
		if (!varOffset.containsKey((name)))
			throw new Error("Field not found: " + name);
		return new Mem(new Binop(Binop.PLUS, getThis(), new Const(getOffset(name))));
	}

	Stm ifThenElse(Expr e, Stm s1, Stm s2) {
		Label t = getNextLabel(), f = getNextLabel(), j = getNextLabel();
		Stm res = new CJump(e, t, f);
		res = add(res, t);
		res = add(res, s1);
		res = add(res, new Jump(new Name(j)));
		res = add(res, f);
		res = add(res, s2);
		res = add(res, j);
		return res;
	}

	Stm ifThen(Expr e, Stm s) {
		Label t = getNextLabel(), d = getNextLabel();
		Stm res = new CJump(e, t, d);
		res = add(res, t);
		res = add(res, s);
		res = add(res, d);
		return res;
	}

	Stm whileDo(Expr e, Stm s) {
		Label c = getNextLabel(), b = getNextLabel(), d = getNextLabel();
		Stm res = c;
		res = add (res, new CJump(e, b, d));
		res = add (res, b);
		res = add (res, s);
		res = add (res, new Jump(new Name(c)));
		res = add (res, d);
		return res;
	}

	Stm allocateInstrs(Expr size, boolean array) {
		Stm s = new Move(AR, HP);
		s = add(s, new Move(new Mem(SP), size));
		if (array) {
			s = add(s, new Move(new Mem(HP), new Mem(SP)));
			s = add(s, addConst(HP, WORDSIZE));
		}
		Expr whileCheck = new Binop(Binop.LT, new Const(0), new Mem(SP));
		Stm whileBody = new Move(new Mem(HP), new Const(0));
		whileBody = add(whileBody, addConst(HP, WORDSIZE));
		whileBody = add(whileBody, addConst(new Mem(SP), -1));
		s = add(s, whileDo(whileCheck, whileBody));
		return s;
	}

	Stm rte(String s, NodeToken n) {
		return new RuntimeError(s + " at line " + n.beginLine + ", column "
				+ n.beginColumn);
	}

	Expr arrayIndex(Expr a, Expr index, NodeToken n) {
		Stm s = new Move(TR, index);
		Expr index1 = new Binop(Binop.PLUS, TR, new Const(1));
		s = add(s, ifThen(isZero(a), rte("NullPointer", n)));
		s = add(s, ifThen(new Binop(Binop.LT, new Mem(new Binop(Binop.PLUS, a, new Const(0))),
				index1), rte("IndexOutOfBounds", n)));
		s = add(s, ifThen(new Binop(Binop.LT, index1, new Const(1))
				, rte("IndexOutOfBounds", n)));
			return new ESeq(s, new Mem(new Binop(Binop.PLUS, a, new Binop(
				Binop.MUL, index1, new Const(WORDSIZE)))));
	}
}
