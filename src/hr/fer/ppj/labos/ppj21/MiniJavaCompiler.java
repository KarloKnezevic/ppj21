package hr.fer.ppj.labos.ppj21;

import hr.fer.ppj.labos.ppj21.assem.Assem;
import hr.fer.ppj.labos.ppj21.ast.Program;
import hr.fer.ppj.labos.ppj21.canon.Canon;
import hr.fer.ppj.labos.ppj21.gui.CompilerGUI;
import hr.fer.ppj.labos.ppj21.medjukod.ActivationRecordsVisitor;
import hr.fer.ppj.labos.ppj21.medjukod.IRTranslationVisitor;
import hr.fer.ppj.labos.ppj21.parse.ParseException;
import hr.fer.ppj.labos.ppj21.parse.Parser;
import hr.fer.ppj.labos.ppj21.parse.TokenMgrError;
import hr.fer.ppj.labos.ppj21.semantika.SymbolTableFillingVisitor;
import hr.fer.ppj.labos.ppj21.semantika.TypeCheckingVisitor;
import hr.fer.ppj.labos.ppj21.tree.Print;
import hr.fer.ppj.labos.ppj21.tree.Stm;

import java.awt.BorderLayout;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.PrintStream;
import java.util.List;
import java.util.Map;

import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JPanel;
import javax.swing.text.BadLocationException;

public class MiniJavaCompiler {
	
	private boolean firstCompilation;
	private Parser parser;
	private Program program;
	public MiniJavaCompiler() {
		firstCompilation=true;
	}
	
	public Map doCheck(InputStream inputStream) {
		CompilerGUI.errorText.setText("");
		if(firstCompilation) {
			parser = new Parser(inputStream);
			new JPanel(new BorderLayout());
			firstCompilation=false;
		}
		else {
			parser.ReInit(inputStream);
		}
		System.out.println("Parsing starts...");
		try {
			program = parser.program();
			System.out.println("Parsing completed without error");
		} catch (ParseException e) {
			System.out.println(e.getMessage());
			System.out.println("Syntax error occured, compilation halts.");
			try {
				CompilerGUI.errorText.setText(CompilerGUI.errorText.getText() + e.getMessage() + "\n");
				CompilerGUI.scrollPane1.getGutter().addLineTrackingIcon(e.currentToken.beginLine-1, createImageIcon("error.gif",e.getMessage()));
			} catch (BadLocationException e1) {}
			return null;
		} catch (TokenMgrError e) {
			System.out.println("Invalid token " + e.getMessage());
			return null;
	    }  catch (Exception e) {
			System.out.println("exc2");
		}
	    System.out.println("Type-checking starts...");
		SymbolTableFillingVisitor symbolTableFillingVisitor = new SymbolTableFillingVisitor();
		try {
			program.accept(symbolTableFillingVisitor);
			TypeCheckingVisitor typeChecker = new TypeCheckingVisitor(symbolTableFillingVisitor.getSymbolTable());
			program.accept(typeChecker);
			System.out.println("Type-checking completed without error");
		} catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("Type-check error occured, compilation halts.");
			return null;
		}
		return symbolTableFillingVisitor.getSymbolTable();
	}

	public void doCompile(InputStream inputStream, FileOutputStream outputStream) {
		Map symbolTable = doCheck(inputStream);
		if(symbolTable==null)
			return;
		ActivationRecordsVisitor activationRecordsVisitor = new ActivationRecordsVisitor();
		System.out.println("Start of making activation records...");
		try {
			program.accept(activationRecordsVisitor);
			System.out.println("Making activation records completed successfully");
		} catch (Exception e) {
			System.out.println(e.getMessage());
			System.out.println("Making activation records error occured, compilation halts.");
			e.printStackTrace();
			return;
		}
		System.out.println("Start of translating to IR...");
		Stm programTree;
		IRTranslationVisitor translationVisitor = new IRTranslationVisitor(activationRecordsVisitor.getOffsets(), activationRecordsVisitor.getSizes(), symbolTable, activationRecordsVisitor.getChildren());
		try {
			programTree = (Stm) program.accept(translationVisitor);
			System.out.println("Translating to IR completed successfully");
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

		System.out.println("Start of Canonicalization...");
		Stm canonizedTree  = Canon.toCanonicalForm(programTree);
		System.out.println("Canonicalization completed successfully!");
		
		System.out.println("Start to listing...");
		List<Stm> programList = Canon.toStmList(canonizedTree);
		System.out.println("Listing completed successfully!");
		
		System.out.println("Start to coding...");
		try {
			Assem.encode(programList, new PrintStream(outputStream));
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		System.out.println("Coding completed succesfully!");
	}
	
	private Icon createImageIcon(String path, String description) {
		java.net.URL imgURL = getClass().getResource(path);
		if (imgURL != null) {
			ImageIcon i = new ImageIcon(imgURL, description);
			return i;
		} else {
			System.err.println("Couldn't find file: " + path);
			return null;
		}
	}
}
