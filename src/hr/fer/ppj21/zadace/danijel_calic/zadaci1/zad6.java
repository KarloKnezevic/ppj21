package hr.fer.ppj21.zadace.danijel_calic.zadaci1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author Danijel Calic
 * @version 1.0
 */
public class zad6 {

	public static void main(String[] args) {
		String input;
		if (args.length == 0) {
			BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
			try {
				do {
					System.out.print("Unesite upit: ");
					input = in.readLine();
					kalkulator(input);
				} while (!input.equalsIgnoreCase("kraj"));
			} catch (IOException e) {
				System.err.println("Greska prilikom unosa");
				System.exit(1);
			} finally {
				try {in.close(); }catch(IOException e) {e.printStackTrace();}
			}
		} else {
			input = args[0];
			kalkulator(input);
		}
	}

	/**
	 * Parsira jednostavan aritmetki izraz i cijelobrojni rezultat ispisuje na
	 * comandnu liniju
	 * @param input
	 *            Aritmeticki izraz tipa {broj}{operator}{broj} ; 
	 *            broj={cijeli brojevi bez predznaka}, operator={+,-,*,:}
	 */
	public static void kalkulator(String input) {
		Pattern p = Pattern.compile("^(\\s*)(\\d+)[\\*\\+-:](\\d+)(\\s*)$");
		Matcher m = p.matcher(input);
		boolean b = m.matches();
		if (b) {
			p = Pattern.compile("\\*|\\+|-|:");
			m = p.matcher(input);
			m.find();
			String operator = m.group();

			String[] operandi = input.split("\\*|\\+|-|:");
			int x = Integer.parseInt(operandi[0].trim());
			int y = Integer.parseInt(operandi[1].trim());
			int rez;

			if (operator.equals("+")) {
				rez = x + y;
			} else if (operator.equals("-")) {
				rez = x - y;
			} else if (operator.equals("*")) {
				rez = x * y;
			} else {
				rez = x / y;
			}
			System.out.println(rez);

		}
	}
}
