package hr.fer.ppj21.labos;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import hr.fer.ppj21.labos.lexer.Lexer;

public class Starter {

	public static void main(String[] args) {
		
		if(args.length==1) {
			Lexer scanner;
			try {
				scanner = new Lexer(new FileReader(args[0]));
				do {
		            System.out.println(scanner.yylex());
		        } while (!scanner.zzAtEOF);
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}

	}

}
