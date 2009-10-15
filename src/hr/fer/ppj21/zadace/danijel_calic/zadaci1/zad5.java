package hr.fer.ppj21.zadace.danijel_calic.zadaci1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
/**
 * @author Danijel Calic
 * @version 1.0
 */
public class zad5 {

	public static void main(String[] args) {
		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		char[] inputChar1;
		char[] inputChar2;
		String inputString1 = null;
		try{	
			do {
				System.out.print("Unesite redak: ");
				inputString1 = in.readLine();
				inputChar1 = inputString1.toCharArray();
				inputChar2 = okreni(inputChar1);
				String inputString2 = new String(inputChar2);
				System.out.println("Obrnuti ispis: " + inputString2);
			} while (!usporedi(inputChar1, inputChar2));
		} catch (IOException e) {
			System.err.println("Greska prilikom unosa");
			System.exit(1);
		}finally{
			try {in.close();} catch (IOException e) {e.printStackTrace();}
		}
		System.out.println("Zavrsavam program jer je detektiran simetrican unos.");
	}

	/**
	 * Okrece zadani niz znakova 
	 * @param polje 
	 * 			  Niz znakova
	 * @return Obrnuti niz znakova
	 */
	public static char[] okreni(char[] polje) {
		char[] obrnutoPolje = new char[polje.length];
		for (int i = 0; i < polje.length; i++) {
			obrnutoPolje[i] = polje[polje.length - 1 - i];
		}
		return obrnutoPolje;
	}

	/**
	 * Usporeduje jednakost dvaju nizova znakova
	 * @param polje1 
	 * 			   Prvi niz znakova
	 * @param polje2
	 *             Drugi niz znakova
	 * @return Nizovi su jednaki ili nisu
	 */
	public static boolean usporedi(char[] polje1, char[] polje2) {
		boolean ista = true;
		if (polje1.length == polje2.length) {
			for (int i = 0; i < polje1.length; i++) {
				if (polje1[i] != polje2[i])
					ista = false;
			}
		} else {
			ista = false;
		}
		return ista;
	}
}
