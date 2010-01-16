package hr.fer.ppj.labos.ppj21.gui;

import hr.fer.ppj.labos.ppj21.assem.Encoder;
import hr.fer.ppj.labos.ppj21.ast.Program;
import hr.fer.ppj.labos.ppj21.canon.Canon;
import hr.fer.ppj.labos.ppj21.medjukod.ActivationRecordsVisitor;
import hr.fer.ppj.labos.ppj21.medjukod.TranslationVisitor;
import hr.fer.ppj.labos.ppj21.parse.ParseException;
import hr.fer.ppj.labos.ppj21.parse.Parser;
import hr.fer.ppj.labos.ppj21.parse.TokenMgrError;
import hr.fer.ppj.labos.ppj21.semantika.SymbolTableVisitor;
import hr.fer.ppj.labos.ppj21.semantika.TypeCheckerVisitor;
import hr.fer.ppj.labos.ppj21.tree.Print;
import hr.fer.ppj.labos.ppj21.tree.Stm;

import java.applet.Applet;
import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintStream;
import java.util.List;
import java.util.Vector;

import javax.swing.ImageIcon;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSeparator;
import javax.swing.JTabbedPane;
import javax.swing.JTextArea;
import javax.swing.border.TitledBorder;
import javax.swing.filechooser.FileNameExtensionFilter;
import javax.swing.text.BadLocationException;

import org.fife.ui.rsyntaxtextarea.AbstractTokenMakerFactory;
import org.fife.ui.rsyntaxtextarea.RSyntaxTextArea;
import org.fife.ui.rsyntaxtextarea.TokenMakerFactory;
import org.fife.ui.rtextarea.RTextScrollPane;

public class CompilerGUI extends JFrame {

	private static final long serialVersionUID = 1L;
	private File file;
	private RSyntaxTextArea sourceText = new RSyntaxTextArea();
	private JTabbedPane tabbedMainPane = new JTabbedPane();
	public static JTextArea errorText = new JTextArea();
	private JScrollPane treeScrollPane;
	public static RTextScrollPane scrollPane1;
	private boolean firstCompilation = true;
	Parser parser;
	
	public CompilerGUI() throws FileNotFoundException {
		super();
		AbstractTokenMakerFactory atmf = (AbstractTokenMakerFactory) TokenMakerFactory.getDefaultInstance();
		atmf.putMapping("Java", "org.fife.ui.rsyntaxtextarea.modes.JavaTokenMaker");
		TokenMakerFactory.setDefaultInstance(atmf);
		sourceText.setSyntaxEditingStyle("Java");
		showGUI();	
	}
	
	public void showGUI() throws FileNotFoundException {
		setPreferredSize(new Dimension(500,500));
		setLocation(50,50);
		setTitle("OLC - Our Little Compiler");
		JPanel mainPanel = new JPanel(new BorderLayout());
		JMenuBar menuBar = new JMenuBar();
		JMenu fileMenu = new JMenu("File");
		JMenuItem fileOpen = new JMenuItem("Open");
		JMenuItem fileSave = new JMenuItem("Save");
		JMenuItem fileClear = new JMenuItem("Clear");
		JMenuItem fileExit = new JMenuItem("Exit");
		sourceText.addKeyListener(new KeyListener() {
			public void keyTyped(KeyEvent e) {
			}
			@Override
			public void keyReleased(KeyEvent e) {
				try {
					scrollPane1.getGutter().removeAllTrackingIcons();
					doCompile();
				} catch (IOException e1) {}
			}
			
			@Override
			public void keyPressed(KeyEvent e) {
				
			}
		});
		fileOpen.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JFileChooser chooser = new JFileChooser();
				FileNameExtensionFilter filter = new FileNameExtensionFilter("Java files", "java");
				chooser.setAcceptAllFileFilterUsed(true);
				chooser.setFileFilter(filter);
				if(chooser.showOpenDialog(null) == JFileChooser.APPROVE_OPTION) {
					file = chooser.getSelectedFile();
					try {
						sourceText.read(new FileReader(file), file);
						tabbedMainPane.setSelectedIndex(0);
					} catch (FileNotFoundException e1) {
						System.err.println("Nije prona�ena datoteka!");
						System.exit(17);
					} catch (IOException e1) {
						System.err.println("Gre�ka prilikom I/O operacija");
						System.exit(13);
					}
				}
			}
		});
		fileSave.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JFileChooser chooser = new JFileChooser();
				FileNameExtensionFilter filter = new FileNameExtensionFilter("C/C++ files", "c", "h", "cpp");
				chooser.setAcceptAllFileFilterUsed(true);
				chooser.addChoosableFileFilter(filter);
				if(chooser.showSaveDialog(null) == JFileChooser.APPROVE_OPTION) {
					file = chooser.getSelectedFile();
					try {
						sourceText.write(new FileWriter(file));
					} catch (FileNotFoundException e1) {
						System.err.println("Nije pronadjena datoteka!");
						System.exit(17);
					} catch (IOException e1) {
						System.err.println("Greska prilikom I/O operacija");
						System.exit(13);
					}
				}
			}
		});
		fileClear.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				sourceText.setText("");
			}
		});
		fileExit.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				System.exit(0);
			}
		});
		fileMenu.add(fileOpen);
		fileMenu.add(fileSave);
		fileMenu.add(fileClear);
		fileMenu.add(new JSeparator());
		fileMenu.add(fileExit);
		JMenu compileMenu = new JMenu("Compile");
		JMenuItem compileItem = new JMenuItem("Compile code");
		compileItem.addMouseListener(new MouseListener() {		
			@Override
			public void mouseReleased(MouseEvent e) {}
			@Override
			public void mousePressed(MouseEvent e) {
				try {
					doCompile();
				} catch (IOException e1) {
					System.err.println("Greska prilikom I/O operacija");
					System.exit(13);
				}
			}
			@Override
			public void mouseExited(MouseEvent e) {}
			@Override
			public void mouseEntered(MouseEvent e) {}
			@Override
			public void mouseClicked(MouseEvent e) {}
		});
		compileMenu.add(compileItem);
		menuBar.add(fileMenu);
		menuBar.add(compileMenu);
	
		JPanel sourcePanel = new JPanel(new BorderLayout());
		scrollPane1 = new RTextScrollPane(sourceText);
		scrollPane1.setIconRowHeaderEnabled(true);
		ImageIcon bookmarkIcon = createImageIcon("bookmark.gif","Bookmark");
		scrollPane1.getGutter().setBookmarkIcon(bookmarkIcon);
		scrollPane1.getGutter().setBookmarkingEnabled(true);
		sourceText.setUseFocusableTips(true);
		sourcePanel.add(scrollPane1, BorderLayout.CENTER);
		tabbedMainPane.addTab("Source code", sourcePanel);
		JPanel errorPanel = new JPanel(new BorderLayout());
		errorPanel.setPreferredSize(new Dimension(500,130));
		errorPanel.setBorder(new TitledBorder("Errors:"));
		JScrollPane scrollPane3 = new JScrollPane(errorText);
		errorPanel.add(scrollPane3, BorderLayout.CENTER);
		sourcePanel.add(errorPanel, BorderLayout.SOUTH);
		tabbedMainPane.addTab("Source", sourcePanel);
		
		mainPanel.add(tabbedMainPane);
		mainPanel.add(menuBar,BorderLayout.NORTH);
		this.getContentPane().add(mainPanel);
		this.pack();
	}
	
	private void doCompile() throws IOException {
		errorText.setText("");
		if(firstCompilation) {
			parser = new Parser(new ByteArrayInputStream(sourceText.getText().getBytes()));
			new JPanel(new BorderLayout());
			firstCompilation=false;
		}
		else {
			Parser.ReInit(new ByteArrayInputStream(sourceText.getText().getBytes()));
			tabbedMainPane.remove(treeScrollPane);
		}	
		Program program;
		System.out.println("Parsing starts...");
		try {
			program = parser.program();
			System.out.println("Parsing completed without error");
		} catch (TokenMgrError e) {
	           System.out.println("Invalid token " + e.getMessage());
	           return;
	    }
		catch (ParseException e) {
			try {
				CompilerGUI.errorText.setText(CompilerGUI.errorText.getText() + e.getMessage() + "\n");
				CompilerGUI.scrollPane1.getGutter().addLineTrackingIcon(e.currentToken.beginLine-1, createImageIcon("error.gif",e.getMessage()));
			} catch (BadLocationException e1) {
			}
			System.out.println("Syntax error occured, compilation halts.");
			return;
		}

		System.out.println("Type-checking starts...");
		SymbolTableVisitor symbolTableVisitor = new SymbolTableVisitor();
		try {
			program.accept(symbolTableVisitor);
			TypeCheckerVisitor typeChecker = new TypeCheckerVisitor(symbolTableVisitor.getSymbolTable());
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
		TranslationVisitor translationVisitor = new TranslationVisitor(
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

		System.out.println("Start of Canonicalizing...");
		Stm canonizedTree  = Canon.toCanonicalForm(programTree);
		System.out.println("Canonicalized completed successfully!");
		
		System.out.println("Start to listing...");
		List<Stm> programList = Canon.toStmList(canonizedTree);
		System.out.println("Listed completed successfully!");
		
		
		System.out.println("Start to coding...");
		try {
			Encoder.encode(programList, new PrintStream(new FileOutputStream("output.x68")));
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		System.out.println("coding completed successfully!\nThe assembly file is now available in output.x68");
	}
	
	public ImageIcon createImageIcon(String path, String description) {
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
