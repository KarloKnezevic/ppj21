packpackage hr.fer.ppj21.zadace.ivan_zebic.zadatak1_4;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
* @author Ivan Zebic
* @version 1.0
*/

public class Zadatak1_4 {
	
	public static void bubble(int[] polje) {
		
	    int br_elem = polje.length;
	    
	    for (int i = 1; i < br_elem; i++) {
	        for (int j = 0; j < (br_elem - i); j++) {
	        	
	            if (polje[j] > polje[j+1]) {
	            	
	        
	                int p = polje[j];  
	                polje[j] = polje[j+1];  
	                polje[j+1] = p;
	                
	            }
	        }
	    }
	}
	
	private static double medijan(int[] polje) {

		int br_elem = polje.length;
		double medijan = 0.0;
		
		if ((br_elem % 2) == 0) {

			medijan = (( polje[(br_elem / 2) - 1] + polje[(br_elem / 2)] ) / 2.0);
		}
		else {
		
			medijan = polje[(br_elem / 2)];
		}
		
		return medijan;
		
	}

	public static void main(String[] args) throws IOException {
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

		System.out.print("Unesi broj elemenata polja: ");
		String unos = reader.readLine();
		int br_elem = Integer.parseInt(unos);

		if (br_elem < 1) {
			System.err.println("Polje mora imati barem jedan element!");
			System.exit(1);
		}

		int[] polje = new int[br_elem];
		
		for(int i = 0; i < br_elem; i++) {
			
			System.out.print("Unesite " + (i + 1) + ". element: ");
			unos = reader.readLine();
			polje[i] = Integer.parseInt(unos);

		}
		
		bubble(polje);
		
		if ((polje.length % 2) == 0) {
		
			System.out.println("Medijan je " + medijan(polje) + ".");
		}
		else {
			System.out.println("Medijan je " + (int) medijan(polje) + ".");
		}
	}

}