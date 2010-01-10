package hr.fer.ppj.labos.ppj21.canon;

import java.io.PrintStream;
import java.util.Vector;

import hr.fer.ppj.labos.ppj21.tree.*;

public class Canon{
	
	static int curTemp = 0;
	static Vector<Stm> result;
	static Print printer = new Print(System.err);

	public static Vector<Stm> linearize(Stm program){
		result = new Vector<Stm>();
		if(program!=null)
			_linearize(program);
		return result;
	}
	
	static void _linearize (Stm cur){
		if(cur instanceof Seq){
			if(((Seq)cur).left!=null)
				_linearize(((Seq)cur).left);
			if(((Seq)cur).right!=null)
				_linearize(((Seq)cur).right);			
		} else
			result.add(cur);
	}
	
	public static void print(StmList list){
		printer.prStm(list.head);
		if(list.tail!=null)
			print(list.tail);
	}
	
	public static void print(Vector<Stm> list, PrintStream ps){
		printer = new Print(ps);
		for(Stm stm : list){
			printer.prStm(stm);
			ps.println();
		}
	}
	
	public static Stm canonize(Stm program){
		curTemp = 0;
		return do_stm(program);
	}
	
	public static int tempCount(){
		return curTemp;
	}
	
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
	
	static Stm do_stm(RuntimeError re){
		return new RuntimeError(re.message);
	}

	static Stm do_stm(CJump cjump){
		ESeq temp = do_exp(cjump.condition);
		if(temp!=null && (temp.exp instanceof Binop || temp.exp instanceof Mem && ((Temp)((Mem)temp.exp).exp).name.indexOf("temp")!=-1))
			temp = new ESeq(new Seq(temp.stm, new Move(new Temp("temp"+(curTemp++)), temp.exp)), new Temp("temp"+(curTemp-1)));
		if(temp!=null)
			return new Seq(temp.stm, new CJump(temp.exp, cjump.iftrue, cjump.iffalse));
		else
			return new CJump(cjump.condition, cjump.iftrue, cjump.iffalse);
	}
	
	static Stm do_stm(Jump jump){
		ESeq temp = do_exp(jump.target);
		if(temp!=null)
			return new Seq(temp.stm, new Jump(temp.exp));
		else
			return new Jump(jump.target);
	}
	
	static Stm do_stm(Move move){
		ESeq dst = do_exp(move.dst);
		ESeq src = do_exp(move.src);
		if(dst!=null){ //Mem
			if(src!=null)
				return new Seq(
						src.stm, new Seq(
						new Move(new Temp("temp"+(curTemp++)), src.exp), new Seq(
						dst.stm, 
						new Move(dst.exp, new Temp("temp"+(curTemp-1)))))
						);
			else
				return new Seq(dst.stm, new Move(dst.exp, move.src));
		} else //Temp
			if(src!=null)
				return new Seq(src.stm, new Move(move.dst, src.exp));
			else
				return new Move(move.dst, move.src);
	}
	
	static Stm do_stm(Label label){
		return new Label(label.toString());
	}
	
	static Stm do_stm(Out out){
		ESeq temp = do_exp(out.value);
		if(temp!=null && temp.exp instanceof Binop)
			temp = new ESeq(new Seq(temp.stm, new Move(new Temp("temp"+(curTemp++)), temp.exp)), new Temp("temp"+(curTemp-1)));
		
		if(temp==null)
			return new Out(out.value);
		else
			return new Seq(temp.stm, new Out(temp.exp));
	}
	
	static Stm do_stm(Seq seq){
		return new Seq(do_stm(seq.left), do_stm(seq.right));
	}
	
	static ESeq do_exp(Expr expr){
		if(expr instanceof Binop)
			return do_exp((Binop)expr);
		if(expr instanceof ESeq)
			return do_exp((ESeq)expr);
		if(expr instanceof Mem)
			return do_exp((Mem)expr);
		return null;
	}
	
	static ESeq do_exp(Binop binop){
		ESeq left = do_exp(binop.left);
		ESeq right = do_exp(binop.right);
		
		if(left!=null && left.exp instanceof Binop)
			left = new ESeq(new Seq(left.stm, new Move(new Temp("temp"+(curTemp++)), left.exp)), new Temp("temp"+(curTemp-1)));
		if(right!=null && right.exp instanceof Binop)
			right = new ESeq(new Seq(right.stm, new Move(new Temp("temp"+(curTemp++)), right.exp)), new Temp("temp"+(curTemp-1)));
		
		if(left!=null)
			if(right!=null)
				return new ESeq(new Seq(left.stm, new Seq(new Move(new Temp("temp"+(curTemp++)), left.exp), right.stm)), new Binop(binop.binop, new Temp("temp"+(curTemp-1)), right.exp));
			else
				return new ESeq(left.stm, new Binop(binop.binop, left.exp, binop.right));
		else
			if(right!=null)
				return new ESeq(new Seq(new Move(new Temp("temp"+(curTemp++)), binop.left), right.stm), new Binop(binop.binop, new Temp("temp"+(curTemp-1)), right.exp));
			else
				return new ESeq(null, new Binop(binop.binop, binop.left, binop.right));
	}
		
	static ESeq do_exp(ESeq eseq){
		Stm stm = do_stm(eseq.stm);
		ESeq exp = do_exp(eseq.exp);
		if(exp!=null)
			return new ESeq(new Seq((stm==null?eseq.stm:stm), exp.stm), exp.exp);
		else
			return new ESeq((stm==null?eseq.stm:stm), eseq.exp);
	}
	
	static ESeq do_exp(Mem mem){
		ESeq temp = do_exp(mem.exp);
		if(temp!=null){
			if(temp.exp instanceof Mem || temp.exp instanceof Binop)
				return new ESeq(new Seq(temp.stm, new Move(new Temp("temp"+(curTemp++)), temp.exp)), new Mem(new Temp("temp"+(curTemp-1))));
			else
				return new ESeq(temp.stm, new Mem(temp.exp));
		} else
			return new ESeq(null, new Mem(mem.exp));
	}
	
}