package hr.fer.ppj.labos.ppj21.tree;

public class Print {

	java.io.PrintStream out = System.err;

	public Print(java.io.PrintStream o) {
		out = o;
	}

	void indent(int d) {
		for (int i = 0; i < d; i++)
			out.print(' ');
	}

	void say(String s) {
		out.print(s);
	}

	void sayln(String s) {
		say(s + "\n");
	}

	void prStm(Seq s, int d) {
		indent(d);
		sayln("Seq(");
		prStm(s.left, d + 1);
		sayln(",");
		prStm(s.right, d + 1);
		say(")");
	}

	void prStm(Label s, int d) {
		indent(d);
		say("LABEL ");
		say(s + "");
	}

	void prStm(Jump s, int d) {
		indent(d);
		sayln("Jump(");
		prStm(s.target, d + 1);
		say(")");
	}
	
	void prExp(Name s, int d) {
		indent(d);
		say("Name(" + s.label.toString() + ")");
	}

	void prStm(CJump s, int d) {
		indent(d);
		sayln("CJump(");
		prStm(s.condition, d+1);
		sayln(",");
		indent(d + 1);
		sayln(s.iftrue.toString());
		indent(d + 1);
		sayln(",");
		indent(d + 1);
		sayln(s.iffalse.toString());
		indent(d + 1);
		sayln(")");
	}

	void prStm(Move s, int d) {
		indent(d);
		sayln("Move(");
		prExp(s.dst, d + 1);
		sayln(",");
		prExp(s.src, d + 1);
		say(")");
	}

	void prStm(Expr s, int d) {
		indent(d);
		sayln("Exp(");
		prExp(s, d + 1);
		say(")");
	}

	void prStm(Out s, int d) {
		indent(d);
		sayln("Print(");
		prExp(s.value, d + 1);
		say(")");
	}
	
	void prStm(RuntimeError s, int d) {
		indent(d);
		sayln("Error(" + s.message + ")");
	}
	
	void prStm(Stm s, int d) {
		if (s == null)
			throw new Error("Printing Null!");
		
		if (s instanceof Seq)
			prStm((Seq) s, d);
		else if (s instanceof Label)
			prStm((Label) s, d);
		else if (s instanceof Jump)
			prStm((Jump) s, d);
		else if (s instanceof CJump)
			prStm((CJump) s, d);
		else if (s instanceof Move)
			prStm((Move) s, d);
		else if (s instanceof Out)
			prStm((Out)s, d);
		else if (s instanceof RuntimeError)
			prStm((RuntimeError)s, d);
		else
			throw new Error("Print.prStm");
	}

	void prExp(Binop e, int d) {
		prExp(e.left, d);
		say("\n");
		indent(d);
		switch (e.binop) {
		case Binop.PLUS:
			sayln("+");
			break;
		case Binop.MINUS:
			sayln("-");
			break;
		case Binop.MUL:
			sayln("*");
			break;
		case Binop.AND:
			sayln("&&");
			break;
		case Binop.LT:
			sayln("<");
			break;
		default:
			throw new Error("Print.prExp.BINOP");
		}
		prExp(e.right, d);
	}

	void prExp(Mem e, int d) {
		indent(d);
		sayln("Mem(");
		prExp(e.exp, d + 1);
		say(")");
	}

	void prExp(Temp e, int d) {
		indent(d);
		say(e + "");
	}

	void prExp(ESeq e, int d) {
		indent(d);
		sayln("ESeq(");
		prStm(e.stm, d + 1);
		sayln(",");
		prExp(e.exp, d + 1);
		say(")");

	}

	void prExp(Const e, int d) {
		indent(d);
		say(e.value+"");
	}

	void prExp(Expr e, int d) {
		if (e instanceof Binop)
			prExp((Binop) e, d);
		else if (e instanceof Mem)
			prExp((Mem) e, d);
		else if (e instanceof Temp)
			prExp((Temp) e, d);
		else if (e instanceof ESeq)
			prExp((ESeq) e, d);
		else if (e instanceof Const)
			prExp((Const) e, d);
		else if (e instanceof Name)
			prExp((Name) e, d);
		else
			throw new Error("Print.prExp" + e.getClass());
	} 

	public void prStm(Stm s) {
		prStm(s, 0);
		say("\n");
	}

	public void prExp(Expr e) {
		prExp(e, 0);
		say("\n");
	}

}
