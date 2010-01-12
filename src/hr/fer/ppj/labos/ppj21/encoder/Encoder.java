package hr.fer.ppj.labos.ppj21.encoder;

import java.io.*;
import java.util.*;
import hr.fer.ppj.labos.ppj21.tree.*;

public class Encoder {
	static int curLabel;
	static boolean labelFlag;

	final static String TEMP_STACK = "A2",
						TEMP_STACK_OFFSET = "$1000000",
						SP = "A3",
						HP = "A4",
						FP = "A5",
						TEMP_ADD = "A6",
						TEMP_ADD_2 = "A7",
						TEMP_REG = "D5",
						TEMP_REG_2 = "D6",
						TEMP_REG_3 = "D7",
						TEMP_REG_RE = "D4";

	public static void encode(Vector<Stm> stmList, PrintStream output){
		curLabel = 0;
		labelFlag = false;
		prologue(output);

		for(Stm stm : stmList)
			printCode(stm, output);

		conclusion(output);
	}

	private static void prologue(PrintStream output){
		output.println("*-------------------------------------------------------");
		output.println("* Automatski generiran kod!");
		output.println("*-------------------------------------------------------");
		output.println("\nSTART\tORG\t$0\n");
		output.println("\tMOVE.L\t#"+TEMP_STACK_OFFSET+", "+TEMP_STACK);
		output.println("");
	}

	private static void conclusion(PrintStream output){
		output.println("\nFNSH\tSTOP\t#$2000\n");
		output.println("NL\tDC.B\t10, 13, 0");
		output.println("MSG\tDS.B\t41");
		output.println("\tEND\tSTART");
	}

	private static void printCode(Stm stm, PrintStream output) {
		output.println("\n*\t"+stm.getClass().getName());
		if(stm instanceof CJump)
			printCode((CJump)stm, output);
		else if(stm instanceof Jump)
			printCode((Jump)stm, output);
		else if(stm instanceof Label)
			printCode((Label)stm, output);
		else if(stm instanceof Move)
			printCode((Move)stm, output);
		else if(stm instanceof Out)
			printCode((Out)stm, output);
		else if(stm instanceof RuntimeError)
			printCode((RuntimeError)stm, output);
		else
			throw new Error("No such Statement! "+stm.getClass().getName());

		if(!(stm instanceof Label)){
			labelFlag = false;
		}
	}

	private static void printCode(CJump cjump, PrintStream output) {
		if(cjump.condition instanceof Const)
			if(((Const)cjump.condition).value==0)
				printCode(new Jump(new Name(cjump.iffalse)), output);
			else
				printCode(new Jump(new Name(cjump.iftrue)), output);
		else if(cjump.condition instanceof Temp){
			output.println("\tAND\t#1, "+getTemp((Temp)cjump.condition, true));
			output.println("\tBEQ\tLT"+(curLabel++));
			printCode(new Jump(new Name(cjump.iftrue)), output);
			output.print("LT"+(curLabel-1));
			printCode(new Jump(new Name(cjump.iffalse)), output);
		}

	}

	private static void printCode(Jump jump, PrintStream output) {
		if(jump.target instanceof Temp)
			output.println("\tJMP\t("+TEMP_ADD_2+")");
		else if(jump.target instanceof Name)
			output.println("\tBRA\t"+((Name)jump.target).label.toString());
		else
			throw new Error("No such jump destination!");
	}

	private static void printCode(Label label, PrintStream output) {
		if(labelFlag)
			output.print("\n"+label.toString());
		else{
			output.print(""+label.toString());
			labelFlag = true;
		}
		if(label.toString().equals("DONE")){
			output.print("\tSTOP\t#$2000\n");
			labelFlag = false;
		}
	}

	private static void printCode(Move move, PrintStream output) {
		if(move.src instanceof Binop){
			Binop binop = (Binop) move.src;
			if(binop.right instanceof Mem && ((Temp)((Mem)binop.right).exp).name.indexOf("temp")!=-1)
				output.println("\tMOVE\t("+TEMP_STACK+")+, "+TEMP_REG_3+"\n\tMOVE.L\t"+TEMP_REG_3+", "+TEMP_ADD);
			output.print("\tMOVE\t");

			if(binop.right instanceof Temp)
				output.print(getTemp((Temp)binop.right, true));
			else if(binop.right instanceof Const)
				output.print("#"+((Const)binop.right).value);
			else if(binop.right instanceof Mem)
				output.print(getMem((Mem)binop.right));
			else
				throw new Error("No such source of Move type!");

			output.println(", "+TEMP_REG_2);

			if(binop.left instanceof Mem && ((Temp)((Mem)binop.left).exp).name.indexOf("temp")!=-1)
				output.println("\tMOVE\t("+TEMP_STACK+")+, "+TEMP_REG_3+"\n\tMOVE.L\t"+TEMP_REG_3+", "+TEMP_ADD);

			output.print("\t");
			switch(binop.binop){
				case Binop.AND:
				case Binop.MUL:
					output.print("MULS"); break;
				case Binop.LT:
				case Binop.MINUS:
					output.print("SUB"); break;
				case Binop.PLUS:
					output.print("ADD"); break;
			}
			output.print("\t");

			if(binop.left instanceof Temp)
				output.print(getTemp((Temp)binop.left, true));
			else if(binop.left instanceof Const)
				output.print("#"+((Const)binop.left).value);
			else if(binop.left instanceof Mem)
				output.print(getMem((Mem)binop.left));
			else
				throw new Error("No such source of Move type!");

			output.println(", "+TEMP_REG_2);

			if(binop.binop == Binop.MINUS)
				output.println("\tNEG\t"+TEMP_REG_2);
			if(binop.binop == Binop.LT){
				output.println("\tBGT\tLT"+(curLabel++));
				output.println("\tMOVE\t#0, "+TEMP_REG_2);
				output.println("\tBRA\tLT"+(curLabel++));
				output.println("LT"+(curLabel-2)+"\tMOVE\t#1, "+TEMP_REG_2);
				output.print("LT"+(curLabel-1));
			}

		} else if(move.src instanceof Name){
			output.println("\tLEA\t"+((Name)move.src).label.toString()+", "+TEMP_ADD);
			output.println("\tMOVE\t"+TEMP_ADD+", "+TEMP_REG_2);
		} else {
			if(move.src instanceof Mem && ((Temp)((Mem)move.src).exp).name.indexOf("temp")!=-1)
				output.println("\tMOVE\t("+TEMP_STACK+")+, "+TEMP_REG_3+"\n\tMOVE.L\t"+TEMP_REG_3+", "+TEMP_ADD);
			output.print("\tMOVE\t");

			if(move.src instanceof Temp)
				output.print(getTemp((Temp)move.src, true));
			else if(move.src instanceof Const)
				output.print("#"+((Const)move.src).value);
			else if(move.src instanceof Mem)
				output.print(getMem((Mem)move.src));
			else
				throw new Error("No such source of Move type! "+move.src.getClass().getName());

			output.println(", "+TEMP_REG_2);
		}

		if(move.dst instanceof Mem && ((Temp)((Mem)move.dst).exp).name.indexOf("temp")!=-1)
			output.println("\tMOVE\t("+TEMP_STACK+")+, "+TEMP_REG_3);

		if(move.src instanceof Temp && ((Temp)move.src).name.indexOf("temp")!=-1 && move.dst instanceof Mem && ((Mem)move.dst).exp instanceof Temp && ((Temp)((Mem)move.dst).exp).name.indexOf("temp")!=-1){
			output.println("\tMOVE\t"+TEMP_REG_2+", -("+TEMP_STACK+")  * New Approach!");
			output.println("\tMOVE\t"+TEMP_REG_3+", "+TEMP_REG_2);
			output.println("\tMOVE\t("+TEMP_STACK+")+, "+TEMP_REG_3);
		}

		if(move.dst instanceof Mem && ((Temp)((Mem)move.dst).exp).name.indexOf("temp")!=-1)
			output.println("\tMOVE.L\t"+TEMP_REG_3+", "+TEMP_ADD);
		output.print("\tMOVE");
		if(move.dst instanceof Temp && getTemp((Temp)move.dst, false).charAt(0)=='A')
			output.print(".L");
		output.print("\t"+TEMP_REG_2+", ");

		if(move.dst instanceof Temp)
			output.println(getTemp((Temp)move.dst, false));
		else if(move.dst instanceof Mem)
			output.println(getMem((Mem)move.dst));
		else
			throw new Error("No such dest of Move type! "+move.src.getClass().getName());

	}

	private static void printCode(Out out, PrintStream output) {
		if(out.value instanceof Mem && ((Temp)((Mem)out.value).exp).name.indexOf("temp")!=-1)
			output.println("\tMOVE\t("+TEMP_STACK+")+, "+TEMP_REG_3+"\n\tMOVE.L\t"+TEMP_REG_3+", "+TEMP_ADD);
		output.print("\tMOVE\t#3, D0\n\tMOVE\t");

		if(out.value instanceof Temp)
			output.print(getTemp((Temp)out.value, true));
		else if(out.value instanceof Const)
			output.print("#"+((Const)out.value).value);
		else if(out.value instanceof Mem)
			output.print(getMem((Mem)out.value));
		else
			throw new Error("No such Out type!");

		output.println(", D1\n\tEXT.L\tD1\n\tTRAP\t#15");
		output.println("\tLEA\tNL, A1\n\tMOVE\t#14, D0\n\tTRAP\t#15");
	}

	private static void printCode(RuntimeError re, PrintStream output){
		output.println("\tLEA\tMSG, "+TEMP_ADD);
		for(int i=0; i<re.message.length(); i++)
			output.println("\tMOVE.B\t#\'"+re.message.charAt(i)+"\', ("+TEMP_ADD+")+");
		output.println("\tMOVE.B\t#0, ("+TEMP_ADD+")");
		output.println("\tLEA\tMSG, A1\n\tMOVE\t#13, D0\n\tTRAP\t#15");
		output.println("\tBRA\tFNSH");
	}

	private static String getTemp(Temp temp, boolean use){
		if(temp.name.indexOf("temp")!=-1)
			if(use)
				return "("+TEMP_STACK+")+";
			else
				return "-("+TEMP_STACK+")";
		if(temp.name.equals("sp"))
			return SP;
		if(temp.name.equals("fp"))
			return FP;
		if(temp.name.equals("hp"))
			return HP;
		if(temp.name.equals("d1"))
			return TEMP_REG;
		if(temp.name.equals("TR"))
			return TEMP_REG_RE;
		if(temp.name.equals("a1"))
			return TEMP_ADD_2;
		throw new Error("No such temp!");
	}

	private static String getMem(Mem mem){
		Temp temp = (Temp)mem.exp;
		if(temp.name.indexOf("temp")!=-1)
				return "("+TEMP_ADD+")";
		if(temp.name.equals("sp"))
			return "("+SP+")";
		if(temp.name.equals("fp"))
			return "("+FP+")";
		if(temp.name.equals("hp"))
			return "("+HP+")";
//		if(temp.name.equals("d1"))
//			return TEMP_REG;
		if(temp.name.equals("a1"))
			return "("+TEMP_ADD_2+")";
		throw new Error("No such mem! "+temp.name);
	}

}
