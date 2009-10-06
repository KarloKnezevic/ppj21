package hr.fer.ppj21.zadace.josip_lehpamer.zadaci1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;


public class zadatak104 {

	private static double nadjiMedijan(int[] polje) {

		double medijan=0.0;
		if ( polje.length % 2 == 0 ) {
			medijan = (polje[polje.length/2-1]+polje[polje.length/2])/2.0;
		}
		else {		
			medijan = polje[polje.length/2];
		}
		
		return medijan;
		
	}
	
	public static void bubbleSort(int[] polje) {
	    
		boolean jos = true;
		while (jos) {
	    
			jos = false;
	        
			for (int i=0; i<polje.length-1; i++) {
	        
				if (polje[i] > polje[i+1]) {
	            
					int temp = polje[i];
					polje[i] = polje[i+1];
					polje[i+1] = temp;
		
					jos = true; 
	            }
	        }
	    }
	}
	
	public static void main(String[] args) throws IOException {
		
		BufferedReader reader = new BufferedReader (
				new InputStreamReader(System.in )
		);
		
		System.out.print("Unesite zeljeni broj elemenata polja : ");
		int n = Integer.parseInt(reader.readLine());
		int[] polje = new int [n];
		for ( int i=0; i<n; i++) polje[i]=i*i;
		
		int broj=0;
		for (int i=0; i<n ; i++) {
			
			System.out.println("Unesite "+(i+1)+". broj polja : ");
			broj = Integer.parseInt(reader.readLine());
			polje[i]=broj;
		}
		
		bubbleSort(polje);
		
		System.out.println("Medijan je : " + nadjiMedijan(polje)+".");
	}

}