package hr.fer.ppj21.zadace.danijel_calic.zadaci1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * @author Danijel Calic
 * @version 1.0
 */
public class zad4 {

	public static void main(String[] args) {
		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Unesite zeljenu velicinu niza: ");
		int duzinaNiza=0;
		int[] niz = null;
		try {
			duzinaNiza = Integer.parseInt(in.readLine());
		    niz = new int[duzinaNiza];
			for(int i=0 ; i < duzinaNiza; i++){
				System.out.print("Unesite " + (i+1) + " element: ");
				niz[i] = Integer.parseInt(in.readLine());
			}
		} catch (NumberFormatException e) {
			System.err.println("String nije moguce psirati u integer");
			System.exit(1);
		} catch (IOException e) {
			System.err.println("Greska u unosu");
			System.exit(1);
		}finally{
			try{in.close();}catch(IOException e){e.printStackTrace();}
		}
		
		BobbleSort(niz);
		float medijan;
		medijan = Medijan(niz);
		System.out.println("Medijan danog niza je: " + medijan);
		
	}
	/**
	 * Sortiranje BobbleSort-om
	 * @param niz 
	 *          Niz koji treba sortirati	
	 */
	public static void BobbleSort(int[] niz){
		int temp;
		boolean zamjenjen = false;
		do{
		   zamjenjen= false;
		   for (int i=0; i<niz.length-1; i++){
			   if(niz[i]>niz[i+1]){
				   temp = niz[i];
				   niz[i]=niz[i+1];
				   niz[i+1]= temp;
				   zamjenjen = true;
			   }
		   }
		}while(zamjenjen);	
	}
	/**
	 * Vraca medijan danog niza
	 * @param SortiraniNiz
	 *                   Sortirani niz cijelih brojeva
	 * @return Medijan niza
	 */
	public static float Medijan(int[] SortiraniNiz){
		float medijan = 0;
		
		if(SortiraniNiz.length % 2 == 1){
			medijan = SortiraniNiz[SortiraniNiz.length/2];
		}
		else{
			medijan = SortiraniNiz[SortiraniNiz.length/2] + SortiraniNiz[SortiraniNiz.length/2-1];
			medijan /= 2.;
		}
		return medijan;
	}
}
