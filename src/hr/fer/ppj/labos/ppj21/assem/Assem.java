package hr.fer.ppj.labos.ppj21.assem;

import java.io.*;
import java.util.*;

import hr.fer.ppj.labos.ppj21.tree.*;

public class Assem {
	static int label;
	static boolean notFirstLabel;

	final static String T_STACK = "A1",
						T_STACK_OFFSET = "$1000000",
						SP = "A2",
						HP = "A3",
						FP = "A4",
						T_ADR_1 = "A5",
						T_ADR_2 = "A6",
						T_DAT_1 = "D1",
						T_DAT_2 = "D2",
						T_DAT_3 = "D3",
						T_DAT_RET = "D4";

	public static void encode(List<Stm> programList, PrintStream output){
		label = 0;
		notFirstLabel = false;
		header(output);
		for(Stm stm : programList)
			printCode(stm, output);
		footer(output);
	}

	private static void header(PrintStream output){
		output.println("*-------------------------------------------------------");
		output.println("* Generated machine code, PPJ21");
		output.println("*-------------------------------------------------------");
		output.println("\nSTART\tORG\t$0\n");
		output.println("\tMOVE.L\t#"+T_STACK_OFFSET+", "+T_STACK);
		output.println("");
	}

	private static void footer(PrintStream output){
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
			notFirstLabel = false;
		}
	}

	private static void printCode(CJump cjump, PrintStream output) {
		//uvjet skoka jednak privremenoj vrijednosti
		if(cjump.condition instanceof Temp){
			output.println("\tAND\t#1, "+getTemp((Temp)cjump.condition, true));
			//labela na koju se skače u slučaju istinitosti izraza
			output.println("\tBEQ\tLT"+(label));
			printCode(new Jump(new Name(cjump.iftrue)), output);
			//labela na koju se skaže ako izraz niej istinit
			output.print("LT"+(label++));
			printCode(new Jump(new Name(cjump.iffalse)), output);
		}
		//uvjet skoka je konstantna vrijednost
		else if(cjump.condition instanceof Const) {
			if(((Const)cjump.condition).value!=0)
				printCode(new Jump(new Name(cjump.iftrue)), output);
			else
				printCode(new Jump(new Name(cjump.iffalse)), output);
		}
	}

	private static void printCode(Jump jump, PrintStream output) {
		//ako se skace na labelu
		if(jump.target instanceof Name)
			output.println("\tBRA\t"+((Name)jump.target).label.toString());
		//ako se skace na privremanu vrijednost
		else if(jump.target instanceof Temp)
			output.println("\tJMP\t("+T_ADR_2+")");
		else
			throw new Error("No such jump destination!");
	}

	private static void printCode(Label label, PrintStream output) {
		//prva labela nema \n ispred
		if(notFirstLabel)
			output.print("\n"+label.toString());
		else{
			output.print(label.toString());
			notFirstLabel = true;
		}
		//kraj programa
		if(label.toString().equals("DONE")){
			output.print("\tSTOP\t#$2000\n");
			notFirstLabel = false;
		}
	}

	private static void printCode(Move move, PrintStream output) {
		if(move.src instanceof Name){
			output.println("\tLEA\t"+((Name)move.src).label.toString()+", "+T_ADR_1);
			output.println("\tMOVE\t"+T_ADR_1+", "+T_DAT_2);
		}
		else if(move.src instanceof Binop){
			Binop binop = (Binop) move.src;
			if(binop.right instanceof Mem && ((Temp)((Mem)binop.right).exp).name.contains("temp"))
				output.println("\tMOVE\t("+T_STACK+")+, "+T_DAT_3+"\n\tMOVE.L\t"+T_DAT_3+", "+T_ADR_1);
			output.print("\tMOVE\t");

			if(binop.right instanceof Const)
				output.print("#"+((Const)binop.right).value);
			else if(binop.right instanceof Temp)
				output.print(getTemp((Temp)binop.right, true));
			else if(binop.right instanceof Mem)
				output.print(getMem((Mem)binop.right));
			else
				throw new Error("No such source of Move type!");

			output.println(", "+T_DAT_2);

			if(binop.left instanceof Mem && ((Temp)((Mem)binop.left).exp).name.contains("temp"))
				output.println("\tMOVE\t("+T_STACK+")+, "+T_DAT_3+"\n\tMOVE.L\t"+T_DAT_3+", "+T_ADR_1);

			output.print("\t");
			switch(binop.binop){
				case Binop.AND:
				case Binop.MUL:
					output.print("MULS"); break;
				case Binop.PLUS:
					output.print("ADD"); break;
				case Binop.LT:
				case Binop.MINUS:
					output.print("SUB"); break;
				
			}
			output.print("\t");
			if(binop.left instanceof Const)
				output.print("#"+((Const)binop.left).value);
			else if(binop.left instanceof Temp)
				output.print(getTemp((Temp)binop.left, true));
			else if(binop.left instanceof Mem)
				output.print(getMem((Mem)binop.left));
			else
				throw new Error("No such source of Move type!");
			output.println(", "+T_DAT_2);
			if(binop.binop == Binop.MINUS)
				output.println("\tNEG\t"+T_DAT_2);
			if(binop.binop == Binop.LT){
				output.println("\tBGT\tLT"+(label++));
				output.println("\tMOVE\t#0, "+T_DAT_2);
				output.println("\tBRA\tLT"+(label++));
				output.println("LT"+(label-2)+"\tMOVE\t#1, "+T_DAT_2);
				output.print("LT"+(label-1));
			}
		}
		else {
			if(move.src instanceof Mem && ((Temp)((Mem)move.src).exp).name.contains("temp"))
				output.println("\tMOVE\t("+T_STACK+")+, "+T_DAT_3+"\n\tMOVE.L\t"+T_DAT_3+", "+T_ADR_1);
			output.print("\tMOVE\t");
			if(move.src instanceof Const)
				output.print("#"+((Const)move.src).value);
			else if(move.src instanceof Mem)
				output.print(getMem((Mem)move.src));
			else if(move.src instanceof Temp)
				output.print(getTemp((Temp)move.src, true));
			else
				throw new Error("No such source of Move type! "+move.src.getClass().getName());
			output.println(", "+T_DAT_2);
		}

		if(move.dst instanceof Mem && ((Temp)((Mem)move.dst).exp).name.contains("temp"))
			output.println("\tMOVE\t("+T_STACK+")+, "+T_DAT_3);
		if(move.src instanceof Temp && ((Temp)move.src).name.contains("temp") && move.dst instanceof Mem && ((Mem)move.dst).exp instanceof Temp && ((Temp)((Mem)move.dst).exp).name.contains("temp")){
			output.println("\tMOVE\t"+T_DAT_2+", -("+T_STACK+")  * New Approach!");
			output.println("\tMOVE\t"+T_DAT_3+", "+T_DAT_2);
			output.println("\tMOVE\t("+T_STACK+")+, "+T_DAT_3);
		}
		if(move.dst instanceof Mem && ((Temp)((Mem)move.dst).exp).name.contains("temp"))
			output.println("\tMOVE.L\t"+T_DAT_3+", "+T_ADR_1);
		output.print("\tMOVE");
		if(move.dst instanceof Temp && getTemp((Temp)move.dst, false).charAt(0)=='A')
			output.print(".L");
		output.print("\t"+T_DAT_2+", ");
		if(move.dst instanceof Temp)
			output.println(getTemp((Temp)move.dst, false));
		else if(move.dst instanceof Mem)
			output.println(getMem((Mem)move.dst));
		else
			throw new Error("No such dest of Move type! "+move.src.getClass().getName());
	}

	private static void printCode(Out out, PrintStream output) {
		if(out.value instanceof Mem && ((Temp)((Mem)out.value).exp).name.contains("temp"))
			output.println("\tMOVE\t("+T_STACK+")+, "+T_DAT_3+"\n\tMOVE.L\t"+T_DAT_3+", "+T_ADR_1);
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
		//ispis poruke o RuntimeErroru
		output.println("\tLEA\tMSG, "+T_ADR_1);
		for(int i=0; i<re.message.length(); i++)
			output.println("\tMOVE.B\t#\'"+re.message.charAt(i)+"\', ("+T_ADR_1+")+");
		output.println("\tMOVE.B\t#0, ("+T_ADR_1+")");
		output.println("\tLEA\tMSG, A1\n\tMOVE\t#13, D0\n\tTRAP\t#15");
		//skok na kraj programa
		output.println("\tBRA\tFNSH");
	}

	private static String getTemp(Temp temp, boolean use){
		//dohvati privremenu vrijednost
		if(temp.name.indexOf("temp")!=-1)
			if(use)
				return "("+T_STACK+")+";
			else
				return "-("+T_STACK+")";
		if(temp.name.equals("sp"))
			return SP;
		if(temp.name.equals("fp"))
			return FP;
		if(temp.name.equals("hp"))
			return HP;
		if(temp.name.equals("d1"))
			return T_DAT_1;
		if(temp.name.equals("TR"))
			return T_DAT_RET;
		if(temp.name.equals("a1"))
			return T_ADR_2;
		throw new Error("No such temp!");
	}

	private static String getMem(Mem mem){
		//dohvati vrijednost sa memorijske lokacije
		Temp temp = (Temp)mem.exp;
		if(temp.name.indexOf("temp")!=-1)
				return "("+T_ADR_1+")";
		if(temp.name.equals("sp"))
			return "("+SP+")";
		if(temp.name.equals("fp"))
			return "("+FP+")";
		if(temp.name.equals("hp"))
			return "("+HP+")";
		if(temp.name.equals("a1"))
			return "("+T_ADR_2+")";
		throw new Error("No such mem! "+temp.name);
	}
}
