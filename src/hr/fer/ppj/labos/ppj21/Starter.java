package hr.fer.ppj.labos.ppj21;

import hr.fer.ppj.labos.ppj21.gui.CompilerGUI;
import hr.fer.ppj.labos.ppj21.parse.Parser;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.lang.reflect.InvocationTargetException;

import javax.swing.JFrame;
import javax.swing.SwingUtilities;
import javax.swing.UIManager;
import javax.swing.UIManager.LookAndFeelInfo;

public class Starter {
	public static void main(String[] args) throws InterruptedException, InvocationTargetException {
		if(args.length==1) {
			try {
				Parser parser = new Parser(new FileReader(args[0]));
				System.out.println("Sintaksno stablo učitane datoteke:");
				System.out.println("----------------------------------");
				System.out.println("");
				parser.toString();
			} catch (FileNotFoundException e1) {
				System.err.println("Nije pronađena datoteka!");
				System.exit(17);
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
						System.err.println("Nije pronađena datoteka!");
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