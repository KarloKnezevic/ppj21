package hr.fer.ppj21.zadace.danijel_calic.zadaci1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
/**
 * @author Danijel Calic
 * @version 1.0
 */
public class zad3 {
	public static void main(String[] args) {
		System.out.print("Koliko broja zelite unjeti: ");

		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		String input = null;
		int broj = 0;
		int[] polje=null;
		try {
			input = in.readLine();
			broj = Integer.parseInt(input);
		    polje = new int[broj];
			for (int x = 0; x < broj; x++) {
				System.out.print("Unesite " + (x + 1) + " broj: ");
	     		input = in.readLine();
				polje[x] = Integer.parseInt(input);
			}
		} catch (NumberFormatException e) {
			System.err.println("String nije moguce parsirati u integer");
			System.exit(1);
		} catch (IOException e) {
			System.err.println("Greska u unosu");
			System.exit(1);
		} finally{
			try{in.close();}catch(IOException e){e.printStackTrace();}
		}
		int min = izracunajMinimum(polje);
		System.out.println("Minimum polja je: " + min);
	}
	/**
	 * Odreduje najmanji element niza
	 * @param niz 
	 *          Niz integera
	 * @return Najmanji element niza
	 */
	private static int izracunajMinimum(int[] niz) {
		int min = niz[0];
		for (int element : niz) {
			if (element < min)
				min = element;
		}
		return min;
	}
}
