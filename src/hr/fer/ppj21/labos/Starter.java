package hr.fer.ppj21.labos;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.swing.JFrame;
import javax.swing.SwingUtilities;

import hr.fer.ppj21.labos.gui.CompilerGUI;
import hr.fer.ppj21.labos.lexer.Lexer;

public class Starter {

	public static void main(String[] args) throws InterruptedException, InvocationTargetException {
		
		if(args.length==1) {
			Lexer scanner;
			try {
				scanner = new Lexer(new FileReader(args[0]));
				do {
		            System.out.println(scanner.yylex().toString());
		        } while (!scanner.zzAtEOF);
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(args.length==0) {
			SwingUtilities.invokeAndWait(new Runnable() {
				
				@Override
				public void run() {
					CompilerGUI gui;
					try {
						gui = new CompilerGUI();
						gui.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
						gui.setVisible(true);
					} catch (FileNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}
			});
		}
		else {
			System.out.println("Compiler se pokrece tako da se zada path izvorne datoteke u komandnoj liniji ili se ne predaje nikakav argument.");
		}

	}

}
