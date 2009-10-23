package hr.fer.ppj21.zadace.ivan_lucev.zadaci1;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;

public class Zadatak3 {

	public static void main(String[] args) throws IOException{

		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
		
		System.out.print("Unesite koliko brojeva sadrži niz: ");
		String redak = reader.readLine();
		
		int N = Integer.parseInt(redak);
		
		int[] brojevi = new int [N];
		
		int i;
		
		for(i=0; i<N; i++){
			System.out.print("\nUnesite "+(i+1)+". broj: ");
			redak = reader.readLine();
			brojevi[i] = Integer.parseInt(redak);
		}
		
		int min = minimum(brojevi);
		
		System.out.println("\nNajmanji broj je: "+min);
		
	}
	
	
	public static int minimum(int[] brojevi){
		
		int min = brojevi[0];
		
		int i;
		for (i=0; i<brojevi.length; i++){
			
			if (brojevi[i] < min)
				min = brojevi[i];
		}
		return min;
	}

}