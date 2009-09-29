package hr.fer.ppj21.igor_saric.zadaci1;

import java.text.DecimalFormat;

/**
* @author Igor Saric
* @version 1.0
*/

public class Zadaci1_01 {
	
	private static double aritmeticka_sredina(double[] polje) {
	
		double suma = 0.0;
		int br_elem = polje.length;
		
		/* zbroji sve elemente polja u sumu */
		for(int i = 0; i < br_elem; i++) {
			suma += polje[i];
		}
		
		/* izracunaj i vrati aritmeticku sredinu */
		return ( suma / br_elem );
	}
	
	private static double geometrijska_sredina(double[] polje) {
		
		double umnozak = 1.0;
		int br_elem = polje.length;
		
		/* pomnozi sve elemente polja */
		for(int i = 0; i < br_elem; i++) {
			umnozak *= polje[i];
		}
		
		/* izracunaj i vrati n-ti korjen iz umnoska, tj. geometrijsku sredinu */
		return ( Math.pow (umnozak, 1.0 / br_elem) );
		
	}
	
	private static double harmonijska_sredina(double[] polje) {
		
		double suma = 0.0;
		int br_elem = polje.length;
		
		/* izracunaj reciprocnu vrijednost elemenata i zbroji ih u sumu */
		for(int i = 0; i < br_elem; i++) {
			suma += (1 / polje[i]);
		}
		
		/* izracunaj i vrati harmonijsku sredinu */
		return ( br_elem / suma );
		
	}
	
	public static void main(String[] args) {
		
		/* provjera broja argumenata */
		if (args.length < 1) {
			System.err.println("Program mora imati barem jedan argument!");
			System.exit(1);
		}
		
		/* kreiraj double polje velièine jednake broju argumenata */
		double[] polje = new double[args.length];
		
		/* kopiraj stringove iz args u double polje */
		for(int i = 0; i < args.length; i++) {
			polje[i] = Double.parseDouble(args[i]);
		}
		
		/* ispisi elemente */
		/* for(int i = 0; i < args.length; i++) {
			System.out.println(polje[i]);
		} */
		
		/* format na 3 decimale */
		DecimalFormat formatter = new DecimalFormat("0.000");
		
		/* ispis */
		System.out.print("Aritemticka sredina iznosi: ");
		System.out.println( formatter.format( aritmeticka_sredina(polje) ) );
		
		System.out.print("Geometrijska sredina iznosi: ");
		System.out.println( formatter.format( geometrijska_sredina(polje) ) );
		
		System.out.print("Harmonijska sredina iznosi: ");
		System.out.println( formatter.format( harmonijska_sredina(polje) ) );
		
	}
}
