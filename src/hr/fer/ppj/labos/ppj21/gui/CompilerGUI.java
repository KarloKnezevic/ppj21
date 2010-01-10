package hr.fer.ppj.labos.ppj21.gui;

import hr.fer.ppj.labos.ppj21.parse.*;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

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

import org.fife.ui.rsyntaxtextarea.AbstractTokenMakerFactory;
import org.fife.ui.rsyntaxtextarea.RSyntaxTextArea;
import org.fife.ui.rsyntaxtextarea.TokenMakerFactory;

public class CompilerGUI extends JFrame {

	private static final long serialVersionUID = 1L;
	private File file;
	private RSyntaxTextArea sourceText = new RSyntaxTextArea();
	private JTabbedPane tabbedMainPane = new JTabbedPane();
	private JTextArea errorText = new JTextArea();
	private JScrollPane treeScrollPane;
	private boolean firstCompilation = true;
	
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
		JScrollPane scrollPane1 = new JScrollPane(sourceText);
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
			new Parser(new ByteArrayInputStream(sourceText.getText().getBytes()));
			new JPanel(new BorderLayout());
			firstCompilation=false;
		}
		else {
			Parser.ReInit(new ByteArrayInputStream(sourceText.getText().getBytes()));
			tabbedMainPane.remove(treeScrollPane);
		}
		try {
			treeScrollPane = new JScrollPane(new SyntaxTree(Parser.));
			tabbedMainPane.add(treeScrollPane, "Sintaksno stablo");
			tabbedMainPane.setSelectedIndex(1);
		} catch (ParseException e) {
			errorText.setText(e.getLocalizedMessage());
		} catch (TokenMgrError e) {
			errorText.setText(e.getLocalizedMessage());
		}
		
	}
	
}
