package hr.fer.ppj21.igor_saric.zadaci1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
* @author Igor Saric
* @version 1.0
*/

public class Zadaci1_03 {
	
	private static int najmanji(int[] polje) {
		
		int br_elem = polje.length;
		
		/* najmanji postavimo kao prvi element, nije bitno */
		int min = polje[0];
		
		/* nadji najmanji element */
		for(int i = 0; i < br_elem; i++) {
			if (polje[i] < min) min = polje[i];
		}
		
		/* vrati najmanji */
		return min;
		
	}

	public static void main(String[] args) throws IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		/* unos broja elemenata */
		System.out.print("Unesi broj elemenata polja: ");
		String unos = reader.readLine();
		int br_elem = Integer.parseInt(unos);
		
		/* provjera unosa */
		if (br_elem < 1) {
			System.err.println("Polje mora imati barem jedan element!");
			System.exit(1);
		}
		
		/* kreiraj int polje trazene velicine */
		int[] polje = new int[br_elem];
		
		/* unos elemenata */
		for(int i = 0; i < br_elem; i++) {
			
			System.out.print("Unesite " + (i + 1) + ". element: ");
			unos = reader.readLine();
			polje[i] = Integer.parseInt(unos);

		}
		
		/* ispis najmanjeg */
		System.out.println("Najmanji broj je " + najmanji(polje) + ".");
	}
}
