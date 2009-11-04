package hr.fer.ppj21.zadace.ivan_zebic.zadaci1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
* @author Ivan Zebic
* @version 1.0
*/

public class Zadatak1_3 {
	
	private static int najmanji(int[] polje) {
		
		int br_elem = polje.length;
		
		int min = polje[0];
		
		for(int i = 0; i < br_elem; i++) {
		
			if (polje[i] < min) min = polje[i];
		}
		
		return min;
		
	}

	public static void main(String[] args) throws IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		System.out.print("Unesi broj elemenata polja: ");
		
		String unos = reader.readLine();
		
		int br_elem = Integer.parseInt(unos);
		
		if (br_elem < 1) {
		
			System.err.println("Polje mora imati barem jedan element.");
			
			System.exit(1);
		}
		
		int[] polje = new int[br_elem];
		
		for(int i = 0; i < br_elem; i++) {
			
			System.out.print("Unesite " + (i + 1) + ". element: ");
			
			unos = reader.readLine();
			
			polje[i] = Integer.parseInt(unos);

		}
		
		System.out.println("Najmanji broj je " + najmanji(polje) + ".");
	}
}