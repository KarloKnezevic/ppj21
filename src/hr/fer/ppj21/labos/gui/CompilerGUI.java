package hr.fer.ppj21.labos.gui;

import hr.fer.ppj21.labos.lexer.Lexer;
import hr.fer.ppj21.labos.lexer.util.MySymbol;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSeparator;
import javax.swing.JTabbedPane;
import javax.swing.JTable;
import javax.swing.JTextArea;
import javax.swing.JTextPane;
import javax.swing.filechooser.FileNameExtensionFilter;
import javax.swing.text.Style;
import javax.swing.text.StyleConstants;
import javax.swing.text.StyledDocument;

public class CompilerGUI extends JFrame {

	private static final long serialVersionUID = 1L;
	private File file;
	private JTextArea sourceText = new JTextArea();
	private JTextPane highlightText = new JTextPane();
	private List<MySymbol> symbols = new ArrayList<MySymbol>();
	private JTabbedPane tabbedMainPane = new JTabbedPane();
	private JPanel tablePanel = new JPanel(new BorderLayout());
	public CompilerGUI() throws FileNotFoundException {
		super();
		showGUI();
	}
	
	public void showGUI() throws FileNotFoundException {
		setPreferredSize(new Dimension(500,500));
		JPanel mainPanel = new JPanel(new BorderLayout());
		JMenuBar menuBar = new JMenuBar();
		JMenu fileMenu = new JMenu("File");
		JMenuItem fileOpen = new JMenuItem("Open");
		JMenuItem fileSave = new JMenuItem("Save");
		JMenuItem fileClear = new JMenuItem("Clear");
		JMenuItem fileExit = new JMenuItem("Exit");
		fileOpen.addMouseListener(new MouseListener() {		
			@Override
			public void mouseReleased(MouseEvent e) {}
			@Override
			public void mousePressed(MouseEvent e) {
				JFileChooser chooser = new JFileChooser();
				FileNameExtensionFilter filter = new FileNameExtensionFilter("C/C++ files", "c", "h", "cpp");
				chooser.setAcceptAllFileFilterUsed(true);
				chooser.setFileFilter(filter);
				
				;
				if(chooser.showOpenDialog(null) == JFileChooser.APPROVE_OPTION) {
					file = chooser.getSelectedFile();
					try {
						sourceText.read(new FileReader(file), file);
					} catch (FileNotFoundException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
				}
			}
			@Override
			public void mouseExited(MouseEvent e) {}
			@Override
			public void mouseEntered(MouseEvent e) {}
			@Override
			public void mouseClicked(MouseEvent e) {}
		});
		fileSave.addMouseListener(new MouseListener() {		
			@Override
			public void mouseReleased(MouseEvent e) {}
			@Override
			public void mousePressed(MouseEvent e) {
				JFileChooser chooser = new JFileChooser();
				FileNameExtensionFilter filter = new FileNameExtensionFilter("C/C++ files", "c", "h", "cpp");
				chooser.setAcceptAllFileFilterUsed(true);
				chooser.addChoosableFileFilter(filter);

				if(chooser.showSaveDialog(null) == JFileChooser.APPROVE_OPTION) {
					file = chooser.getSelectedFile();
					try {
						sourceText.write(new FileWriter(file));
					} catch (FileNotFoundException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
				}
			}
			@Override
			public void mouseExited(MouseEvent e) {}
			@Override
			public void mouseEntered(MouseEvent e) {}
			@Override
			public void mouseClicked(MouseEvent e) {}
		});
		fileClear.addMouseListener(new MouseListener() {		
			@Override
			public void mouseReleased(MouseEvent e) {}
			@Override
			public void mousePressed(MouseEvent e) {
				sourceText.setText("");
			}
			@Override
			public void mouseExited(MouseEvent e) {}
			@Override
			public void mouseEntered(MouseEvent e) {}
			@Override
			public void mouseClicked(MouseEvent e) {}
		});
		fileExit.addMouseListener(new MouseListener() {		
			@Override
			public void mouseReleased(MouseEvent e) {}
			@Override
			public void mousePressed(MouseEvent e) {
				System.exit(0);
			}
			@Override
			public void mouseExited(MouseEvent e) {}
			@Override
			public void mouseEntered(MouseEvent e) {}
			@Override
			public void mouseClicked(MouseEvent e) {}
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
					// TODO Auto-generated catch block
					e1.printStackTrace();
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
		
		JPanel highlightPanel = new JPanel(new BorderLayout());
		JScrollPane scrollPane2 = new JScrollPane(highlightText);
		highlightPanel.add(scrollPane2, BorderLayout.CENTER);
		tabbedMainPane.addTab("Syntax highlight", highlightPanel);
		
		tabbedMainPane.addTab("Leksièka tablica", tablePanel);
		tabbedMainPane.setEnabledAt(1, false);
		tabbedMainPane.setEnabledAt(2, false);
		mainPanel.add(tabbedMainPane);
		mainPanel.add(menuBar,BorderLayout.NORTH);
		this.getContentPane().add(mainPanel);
		this.pack();
	}
	
	private void doCompile() throws IOException {
		ByteArrayInputStream bs = new ByteArrayInputStream(sourceText.getText().getBytes());
		symbols = new ArrayList<MySymbol>();
		Lexer scanner = new Lexer(bs);
		do {
			symbols.add(scanner.yylex());
        } while (!scanner.zzAtEOF);
		highlightSyntax();
	}
	
	private void highlightSyntax() {
		StyledDocument doc = highlightText.getStyledDocument(); 
		Style style = highlightText.addStyle("Red", null);
	    StyleConstants.setForeground(style, Color.RED);
	    style = highlightText.addStyle("Green", null);
	    StyleConstants.setForeground(style, Color.GREEN);
	    style = highlightText.addStyle("Blue", null);
	    StyleConstants.setForeground(style, Color.BLUE);
	    style = highlightText.addStyle("Pink", null);
	    StyleConstants.setForeground(style, Color.PINK);
	    highlightText.setText(sourceText.getText());
		String text = highlightText.getText();
		String[] colNames = {"Klasa", "Simbol", "Pozicija"};
		String[][] data = new String[symbols.size()][3];
	    int idx=0;
	    int i=0;
		for(MySymbol s:symbols) {
			String sText = s.getText();
			data[i][0]=s.getKlasa();
			data[i][1]=sText;
			data[i][2]="(line:" + s.getLine() + ",column:" + s.getColumn() + ")";
			i++;
			idx = text.indexOf(s.getText(), idx+1);
			if(s.getKlasa().equals("Keyword"))
				doc.setCharacterAttributes(idx, sText.length(), highlightText.getStyle("Green"), true);
			else if(s.getKlasa().equals("Character") || s.getKlasa().equals("String"))
				doc.setCharacterAttributes(idx, sText.length(), highlightText.getStyle("Red"), true);
			else if(s.getKlasa().equals("Identifier"))
				doc.setCharacterAttributes(idx, sText.length(), highlightText.getStyle("Blue"), true);
			else if(s.getKlasa().equals("Integer") || s.getKlasa().equals("Decimal"))
				doc.setCharacterAttributes(idx, sText.length(), highlightText.getStyle("Pink"), true);
	
		}
		tablePanel.removeAll();
		JTable lexerTable = new JTable(data, colNames);
		JScrollPane scrollPane3 = new JScrollPane(lexerTable);
		tablePanel.add(scrollPane3, BorderLayout.CENTER);
		tabbedMainPane.setEnabledAt(1, true);
		tabbedMainPane.setEnabledAt(2, true);
		tabbedMainPane.setSelectedIndex(1);
	}
	
}
