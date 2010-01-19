package hr.fer.ppj.labos.ppj21.gui;

import hr.fer.ppj.labos.ppj21.MiniJavaCompiler;
import hr.fer.ppj.labos.ppj21.parse.Parser;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.prefs.Preferences;

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
	public static RTextScrollPane scrollPane1;
	private MiniJavaCompiler compiler;
	Parser parser;
	
	public CompilerGUI() throws FileNotFoundException {
		super();
		AbstractTokenMakerFactory atmf = (AbstractTokenMakerFactory) TokenMakerFactory.getDefaultInstance();
		atmf.putMapping("Java", "org.fife.ui.rsyntaxtextarea.modes.JavaTokenMaker");
		TokenMakerFactory.setDefaultInstance(atmf);
		sourceText.setSyntaxEditingStyle("Java");
		compiler = new MiniJavaCompiler();
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
				scrollPane1.getGutter().removeAllTrackingIcons();
				compiler.doCheck(new ByteArrayInputStream(sourceText.getText().getBytes()));
			}
			
			@Override
			public void keyPressed(KeyEvent e) {
				
			}
		});
		fileOpen.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				Preferences prefs = Preferences.userRoot().node(CompilerGUI.class.getCanonicalName());
				String lastDir = prefs.get("lastDir", null);
				JFileChooser chooser = new JFileChooser();
				FileNameExtensionFilter filter = new FileNameExtensionFilter("MiniJava files", "mj");
				chooser.setAcceptAllFileFilterUsed(true);
				chooser.setFileFilter(filter);
				if(lastDir!=null && !lastDir.isEmpty()) {
					chooser.setCurrentDirectory(new File(lastDir));
				}
				if(chooser.showOpenDialog(null) == JFileChooser.APPROVE_OPTION) {
					file = chooser.getSelectedFile();
					prefs.put("lastDir", file.getParentFile().getAbsolutePath());
					try {
						sourceText.read(new FileReader(file), file);
						tabbedMainPane.setSelectedIndex(0);
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
		fileSave.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				Preferences prefs = Preferences.userRoot().node(CompilerGUI.class.getCanonicalName());
				JFileChooser chooser = new JFileChooser();
				FileNameExtensionFilter filter = new FileNameExtensionFilter("MiniJava files", "mj");
				chooser.setAcceptAllFileFilterUsed(true);
				chooser.addChoosableFileFilter(filter);
				String lastDir = prefs.get("lastDir", null);
				if(lastDir!=null && !lastDir.isEmpty()) {
					chooser.setCurrentDirectory(new File(lastDir));
				}
				if(chooser.showSaveDialog(null) == JFileChooser.APPROVE_OPTION) {
					file = chooser.getSelectedFile();
					String name = file.getName();
					if (name.indexOf('.')==-1) {
						name += ".mj";
						file = new File(file.getParentFile(), name);
					}
					prefs.put("lastDir", file.getParentFile().getAbsolutePath());
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
				Preferences prefs = Preferences.userRoot().node(CompilerGUI.class.getCanonicalName());
				String lastDir = prefs.get("lastDir", null);
				JFileChooser fileChooser = new JFileChooser();
				FileNameExtensionFilter filter = new FileNameExtensionFilter("X68 files", "x68");
				fileChooser.setAcceptAllFileFilterUsed(true);
				fileChooser.setFileFilter(filter);
				if(lastDir!=null && !lastDir.isEmpty()) {
					fileChooser.setCurrentDirectory(new File(lastDir));
				}
				int returnValue = fileChooser.showSaveDialog(null);
				if(returnValue!=JFileChooser.APPROVE_OPTION) {
					System.err.println("Nije odabrana datoteka!");
					System.exit(13);
				}
				file = fileChooser.getSelectedFile();
				String name = file.getName();
				if (name.indexOf('.')==-1) {
					name += ".x68";
					file = new File(file.getParentFile(), name);
				}
				prefs.put("lastDir", file.getParentFile().getAbsolutePath());
				try {
					compiler.doCompile(new ByteArrayInputStream(sourceText.getText().getBytes()), new FileOutputStream(file));
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
