package hr.fer.ppj21.labos.gui;

import hr.fer.ppj21.labos.lexer.Lexer;
import hr.fer.ppj21.labos.lexer.util.MySym;
import hr.fer.ppj21.labos.lexer.util.MySymbol;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.LayoutManager;
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
import java.util.ArrayList;
import java.util.List;

import javax.swing.BorderFactory;
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
import javax.swing.border.TitledBorder;
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
	private JTextArea errorText = new JTextArea();
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
		fileOpen.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JFileChooser chooser = new JFileChooser();
				FileNameExtensionFilter filter = new FileNameExtensionFilter("C/C++ files", "c", "h", "cpp");
				chooser.setAcceptAllFileFilterUsed(true);
				chooser.setFileFilter(filter);
				if(chooser.showOpenDialog(null) == JFileChooser.APPROVE_OPTION) {
					file = chooser.getSelectedFile();
					try {
						sourceText.read(new FileReader(file), file);
						tabbedMainPane.setSelectedIndex(0);
					} catch (FileNotFoundException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
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
						// TODO Auto-generated catch block
						e1.printStackTrace();
					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
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
		JPanel errorPanel = new JPanel(new BorderLayout());
		errorPanel.setPreferredSize(new Dimension(500,100));
		errorPanel.setBorder(new TitledBorder("Errors:"));
		JScrollPane scrollPane3 = new JScrollPane(errorText);
		errorPanel.add(scrollPane3, BorderLayout.CENTER);
	
		highlightPanel.add(errorPanel, BorderLayout.SOUTH);
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
        } while (!symbols.get(symbols.size()-1).getKlasa().equals(MySym.EOF));
		highlightSyntax();
	}
	
	private void highlightSyntax() {
		StyledDocument doc = highlightText.getStyledDocument(); 
		Style style = highlightText.addStyle("String", null);
	    StyleConstants.setForeground(style, Color.RED);
	    StyleConstants.setBold(style, true);
	    style = highlightText.addStyle("Keyword", null);
	    StyleConstants.setForeground(style, Color.GREEN);
	    StyleConstants.setBold(style, true);
	    style = highlightText.addStyle("Identifier", null);
	    StyleConstants.setForeground(style, Color.BLUE);
	    StyleConstants.setBold(style, true);
	    style = highlightText.addStyle("Constant", null);
	    StyleConstants.setForeground(style, Color.PINK);
	    StyleConstants.setBold(style, true);
	    style = highlightText.addStyle("Error", null);
	    StyleConstants.setBackground(style, Color.YELLOW);
	    highlightText.setText(sourceText.getText());
	    errorText.setText("");
		String text = highlightText.getText();
		String[] colNames = {"Klasa", "Simbol", "Pozicija"};
		String[][] data = new String[symbols.size()][3];
	    int idx=0;
	    int i=0;
		for(MySymbol s:symbols) {
			String sText = s.getText();
			if(s.getType().equals(""))
				data[i][0]=s.getKlasa();
			else
				data[i][0]=s.getKlasa() + "<" + s.getType() + ">";
			data[i][1]=sText;
			data[i][2]="(line:" + s.getLine() + ",column:" + s.getColumn() + ")";
			i++;
			if(idx==0)
				idx = text.indexOf(s.getText(), idx);
			else
				idx = text.indexOf(s.getText(), idx+1);
			if(s.getKlasa().equals("Character"))
				doc.setCharacterAttributes(idx, sText.length(), highlightText.getStyle("String"), true);
			else if(s.getKlasa().equals("String")||s.getKlasa().equals("Keyword")||s.getKlasa().equals("Identifier")||s.getKlasa().equals("Constant"))
				doc.setCharacterAttributes(idx, sText.length(), highlightText.getStyle(s.getKlasa()), true);
		}
		idx=0;
		for(MySymbol s:symbols) {
			if(s.getKlasa().equals("Error")) {
				if(idx==0)
					idx = text.indexOf(s.getText(), idx);
				else
					idx = text.indexOf(s.getText(), idx+1);
				String currText = errorText.getText();
				String newText;
				newText = currText + "Greška na liniji: " + s.getLine() + ", na simbolu: " + s.getText();
				if(s.getType().equals("VARERROR"))
					newText+=" <Pogrešna deklaracija varijable>\n";
				if(s.getType().equals("UNEXPECTED"))
					newText+=" <Neoèekivani simbol>\n";
				errorText.setText(newText);
				int hlidx1=idx;
				int hlidx2=idx;
				while(hlidx1>0 && text.charAt(hlidx1)!='\n')
					hlidx1--;
				while(hlidx2<text.length() && text.charAt(hlidx2)!='\n')
					hlidx2++;
				doc.setCharacterAttributes(hlidx1, hlidx2-hlidx1, highlightText.getStyle(s.getKlasa()), true);
			}
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
