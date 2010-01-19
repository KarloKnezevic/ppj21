package hr.fer.ppj.labos.ppj21;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.util.List;
import java.util.Vector;

import EDU.purdue.jtb.visitor.DepthFirstVisitor;

import hr.fer.ppj.labos.ppj21.assem.Assem;
import hr.fer.ppj.labos.ppj21.ast.Program;
import hr.fer.ppj.labos.ppj21.canon.Canon;
import hr.fer.ppj.labos.ppj21.gui.util.tree.SimpleNode;
import hr.fer.ppj.labos.ppj21.gui.util.tree.SimpleNodeVisitor;

import hr.fer.ppj.labos.ppj21.medjukod.ActivationRecordsVisitor;
import hr.fer.ppj.labos.ppj21.medjukod.IRTranslationVisitor;
import hr.fer.ppj.labos.ppj21.parse.ParseException;
import hr.fer.ppj.labos.ppj21.parse.Parser;
import hr.fer.ppj.labos.ppj21.parse.TokenMgrError;
import hr.fer.ppj.labos.ppj21.semantika.SymbolTableFillingVisitor;
import hr.fer.ppj.labos.ppj21.semantika.TypeCheckingVisitor;
import hr.fer.ppj.labos.ppj21.tree.Print;
import hr.fer.ppj.labos.ppj21.tree.Stm;

public class Compiler {
	public static void main(String[] args) {
		Parser parser;
		Program program;
		String filename;
		try {
			if (args.length > 0)
				filename = args[0];
			else {
				System.out.print("Please specify the source file: ");
				filename = new BufferedReader(new InputStreamReader(System.in))
						.readLine();
			}
			System.out.println("Opening source file: " + filename + "...");
			parser = new Parser(new BufferedReader(new FileReader(new File(
					filename))));
			System.out.println("Source file opened successfully");
		} catch (IOException e) {
			System.out.println("Error in opening source file, compilation halts.");
			return;
		}

		System.out.println("Parsing starts...");
		try {
			program = parser.program();
			System.out.println("Parsing completed without error");
		} catch (TokenMgrError e) {
	           System.out.println("Invalid token " + e.getMessage());
	           return;
	    }

		catch (ParseException e) {
			System.out.println(e.getMessage());
			System.out.println("Syntax error occured, compilation halts.");
			return;
		}

		System.out.println("Type-checking starts...");
		SymbolTableFillingVisitor symbolTableVisitor = new SymbolTableFillingVisitor();
		try {
			program.accept(symbolTableVisitor);
			TypeCheckingVisitor typeChecker = new TypeCheckingVisitor(
					symbolTableVisitor.getSymbolTable());
			program.accept(typeChecker);
			System.out.println("Type-checking completed without error");
		} catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("Type-check error occured, compilation halts.");
			return;
		}
		
		System.out.println("Start of making activation records...");
		ActivationRecordsVisitor activationRecordsVisitor = new ActivationRecordsVisitor();
		try {
			program.accept(activationRecordsVisitor);
			System.out.println("Making activation records completed without error");
		} catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("Making activation records error occured, compilation halts.");
			e.printStackTrace();
			return;
		}
		System.out.println("Start of translating to IR...");
		Stm programTree;
		IRTranslationVisitor translationVisitor = new IRTranslationVisitor(
				activationRecordsVisitor.getOffsets(), activationRecordsVisitor.getSizes(),
				symbolTableVisitor.getSymbolTable(), activationRecordsVisitor.getChildren());
		try {
			programTree = (Stm) program.accept(translationVisitor);
			System.out.println("Translating to IR completed without error");
		} catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("Translating to IR error occured, compilation halts.");
			e.printStackTrace();
			return;
		}
		try {
			Print printer = new Print(new PrintStream(new FileOutputStream("tree.txt")));
			printer.prStm(programTree);
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println("Start of Canonicalizing...");
		Stm canonizedTree  = Canon.toCanonicalForm(programTree);
		System.out.println("Canonicalized completed successfully!");
		
		System.out.println("Start to listing...");
		List<Stm> programList = Canon.toStmList(canonizedTree);
		System.out.println("Listed completed successfully!");
		
		System.out.println("Start to coding...");
		try {
			Assem.encode(programList, new PrintStream(new FileOutputStream("output.x68")));
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		System.out.println("coding completed successfully!\nThe assembly file is now available in output.x68");
	}
}
