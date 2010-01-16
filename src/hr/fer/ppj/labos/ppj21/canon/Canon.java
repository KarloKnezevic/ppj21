package hr.fer.ppj.labos.ppj21.canon;

import hr.fer.ppj.labos.ppj21.tree.*;

import java.util.ArrayList;
import java.util.List;

public class Canon{
	
	static int curTemp = 0;
	static List<Stm> stmList;
	
	static Stm do_stm(Stm stm) {
		if(stm instanceof CJump)
			return do_stm((CJump)stm);
		if(stm instanceof Jump)
			return do_stm((Jump)stm);
		if(stm instanceof Label)
			return do_stm((Label)stm);
		if(stm instanceof Out)
			return do_stm((Out)stm);
		if(stm instanceof Seq)
			return do_stm((Seq)stm);
		if(stm instanceof Move)
			return do_stm((Move)stm);
		if(stm instanceof RuntimeError)
			return do_stm((RuntimeError)stm);
		return null;
	}

	private static Stm do_stm(CJump cjump){
		ESeq temp = do_exp(cjump.condition);
		if(temp!=null) {
			if(temp.exp instanceof Mem) {
				Mem m = (Mem) temp.exp;
				if(((Temp)(m.exp)).name.contains("temp")) {
					Temp t=new Temp("temp"+(curTemp++));
					temp = new ESeq(new Seq(temp.stm, new Move(t, temp.exp)), t);
				}	
			}
			else if(temp.exp instanceof Binop) {
				Temp t=new Temp("temp"+(curTemp++));
				temp = new ESeq(new Seq(temp.stm, new Move(t, temp.exp)), t);
			}
			return new Seq(temp.stm, new CJump(temp.exp, cjump.iftrue, cjump.iffalse));
		}
		else
			return new CJump(cjump.condition, cjump.iftrue, cjump.iffalse);
	}
	
	private static Stm do_stm(Jump jump){
		ESeq temp = do_exp(jump.target);
		if(temp!=null)
			return new Seq(temp.stm, new Jump(temp.exp));
		else
			return new Jump(jump.target);
	}
	
	private static Stm do_stm(Label label){
		return new Label(label.toString());
	}
	
	private static Stm do_stm(Out out){
		ESeq temp = do_exp(out.value);
		if(temp!=null) {
			if(temp.exp instanceof Binop) {
				Temp t = new Temp("temp"+(curTemp++));
				temp = new ESeq(new Seq(temp.stm, new Move(t, temp.exp)), t);
			}
			return new Seq(temp.stm, new Out(temp.exp));
		}
		else
			return new Out(out.value);
	}
	
	private static Stm do_stm(Seq seq){
		return new Seq(do_stm(seq.left), do_stm(seq.right));
	}
	
	private static ESeq do_exp(Expr expr){
		if(expr instanceof Binop)
			return do_exp((Binop)expr);
		if(expr instanceof ESeq)
			return do_exp((ESeq)expr);
		if(expr instanceof Mem)
			return do_exp((Mem)expr);
		return null;
	}
	
	private static ESeq do_exp(Binop binop){
		ESeq left = do_exp(binop.left);
		ESeq right = do_exp(binop.right);
		
		if(left!=null) {
			if (left.exp instanceof Binop) {
				Temp t = new Temp("temp"+(curTemp++));
				left = new ESeq(new Seq(left.stm, new Move(t, left.exp)), t);
			}	
		}
		if(right!=null) {
			if(right.exp instanceof Binop) {
				Temp t = new Temp("temp"+(curTemp++));
				right = new ESeq(new Seq(right.stm, new Move(t, right.exp)), t);
			}	
		}
		if(left!=null)
			if(right!=null) {
				Temp t = new Temp("temp"+(curTemp++));
				return new ESeq(new Seq(left.stm, new Seq(new Move(t, left.exp), right.stm)), new Binop(binop.binop, t, right.exp));
			}
			else
				return new ESeq(left.stm, new Binop(binop.binop, left.exp, binop.right));
		else
			if(right!=null) {
				Temp t = new Temp("temp"+(curTemp++));
				return new ESeq(new Seq(new Move(t, binop.left), right.stm), new Binop(binop.binop, t, right.exp));
			}
			else
				return new ESeq(null, new Binop(binop.binop, binop.left, binop.right));
	}
		
	private static ESeq do_exp(ESeq eseq){
		Stm stm = do_stm(eseq.stm);
		ESeq exp = do_exp(eseq.exp);
		if(exp!=null) {
			if(stm==null) {
				return new ESeq(new Seq((eseq.stm), exp.stm), exp.exp);
			}
			else {
				return new ESeq(new Seq((stm), exp.stm), exp.exp);
			}
		}
		else {
			if(stm==null) {
				return new ESeq((eseq.stm), eseq.exp);
			}
			else {
				return new ESeq((stm), eseq.exp);
			}
		}	
	}
	
	private static ESeq do_exp(Mem mem){
		ESeq temp = do_exp(mem.exp);
		if(temp!=null){
			if(temp.exp instanceof Mem || temp.exp instanceof Binop) {
				Temp t = new Temp("temp"+(curTemp++));
				return new ESeq(new Seq(temp.stm, new Move(t, temp.exp)), new Mem(t));
			}
			else
				return new ESeq(temp.stm, new Mem(temp.exp));
		}
		else
			return new ESeq(null, new Mem(mem.exp));
	}
	
	private static Stm do_stm(Move move){
		ESeq dst = do_exp(move.dst);
		ESeq src = do_exp(move.src);
		if(dst!=null){
			if(src!=null) {
				Temp t = new Temp("temp"+(curTemp++));
				return new Seq(src.stm, new Seq(new Move(t, src.exp), new Seq(dst.stm,new Move(dst.exp,t))));
			}
			else
				return new Seq(dst.stm, new Move(dst.exp, move.src));
		}
		else {
			if(src!=null)
				return new Seq(src.stm, new Move(move.dst, src.exp));
			else
				return new Move(move.dst, move.src);
		}
	}
	
	private static Stm do_stm(RuntimeError re){
		return new RuntimeError(re.message);
	}
	
	public static List<Stm> toStmList(Stm program){
		stmList = new ArrayList<Stm>();
		if(program!=null)
			stmList(program);
		return stmList;
	}
	
	static void stmList (Stm cur){
		if(cur instanceof Seq){
			Seq s = (Seq)cur;
			if(s.left!=null)
				stmList(s.left);
			if(s.right!=null)
				stmList(s.right);			
		} else
			stmList.add(cur);
	}
	
	public static Stm toCanonicalForm(Stm program){
		curTemp = 0;
		return do_stm(program);
	}
	
	public static int tempCount(){
		return curTemp;
	}
	
}