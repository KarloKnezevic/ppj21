package hr.fer.ppj21.labos;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.swing.JFrame;
import javax.swing.SwingUtilities;
import javax.swing.UIManager;
import javax.swing.UIManager.LookAndFeelInfo;

import hr.fer.ppj21.labos.gui.CompilerGUI;
import hr.fer.ppj21.labos.lexer.Lexer;
import hr.fer.ppj21.labos.lexer.util.*;

public class Starter {

	public static void main(String[] args) throws InterruptedException, InvocationTargetException {
		
		if(args.length==1) {
			Lexer scanner;
			try {
				scanner = new Lexer(new FileReader(args[0]));
				MySymbol s;
				do {
					s = scanner.yylex();
		            System.out.println(s.toString());
		        } while (!s.getKlasa().equals(MySym.EOF));
			} catch (FileNotFoundException e1) {
				System.err.println("Nije pronaðena datoteka!");
				System.exit(17);
			} catch (IOException e1) {
				System.err.println("Greška prilikom I/O operacija");
				System.exit(13);
			}
		}
		else if(args.length==0) {
			try {
			    for (LookAndFeelInfo info : UIManager.getInstalledLookAndFeels()) {
			        if ("Nimbus".equals(info.getName())) {
			            UIManager.setLookAndFeel(info.getClassName());
			            break;
			        }
			    }
			} catch (Exception e) {
			    // If Nimbus is not available, you can set the GUI to another look and feel.
			}
			SwingUtilities.invokeAndWait(new Runnable() {
				
				@Override
				public void run() {
					CompilerGUI gui;
					try {
						gui = new CompilerGUI();
						gui.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
						gui.setVisible(true);
					} catch (FileNotFoundException e1) {
						System.err.println("Nije pronaðena datoteka!");
						System.exit(17);
					}
				}
			});
		}
		else {
			System.out.println("Compiler se pokrece tako da se zada path izvorne datoteke u komandnoj liniji ili se ne predaje nikakav argument.");
		}

	}

}
