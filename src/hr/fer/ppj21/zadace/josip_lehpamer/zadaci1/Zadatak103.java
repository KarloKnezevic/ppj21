package hr.fer.ppj21.zadace.josip_lehpamer.zadaci1;
import java.io.BufferedReader ;
import java.io.IOException;
import java.io.InputStreamReader;

public class Zadatak103 {
	private static int najmanji (int[] polje) {
		int min=polje[0];
		for (int i=1; i < polje.length; i++) {
			if (polje[i] < min)  min=polje[i];
		}
		return (min);
	}
	
	public static void main(String[]args) throws IOException {
		
		BufferedReader reader = new BufferedReader (
				new InputStreamReader(System.in )
		);
		
		/*unos broja elemenata i alociranje polja */
		int n = Integer.parseInt(reader.readLine());
		int[] polje = new int [n];
		for ( int i=0; i<n; i++) polje[i]=i*i;
		
		for (int i=0; i<n ; i++) {
			int broj = Integer.parseInt(reader.readLine());
			polje[i]=broj;
		}
		
		System.out.println(najmanji(polje));
		
	}
}
