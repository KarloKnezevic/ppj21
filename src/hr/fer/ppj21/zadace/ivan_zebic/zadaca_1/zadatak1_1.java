package hr.fer.ppj21.zadace.ivan_zebic.zadatak1_1;

import java.text.DecimalFormat;

/**
* @author Ivan Zebic
* @version 1.0
*/

public class Zadatak1_1 {
	
	private static double ari_s(double[] polje) {
	
		double suma = 0.0;
		int br_e = polje.length;
		
		for(int i = 0; i < br_e; i++) {
			suma += polje[i];
		}
		
		return ( suma / br_e );
	}
	
	private static double geo_s(double[] polje) {
		
		double umnozak = 1.0;
		int br_e = polje.length;
		
		for(int i = 0; i < br_e; i++) {
			umnozak *= polje[i];
		}

		return ( Math.pow (umnozak, 1.0 / br_e) );
		
	}
	
	private static double har_s(double[] polje) {
		
		double suma = 0.0;
		int br_e = polje.length;

		for(int i = 0; i < br_e; i++) {
			suma += (1 / polje[i]);
		}
		
		return ( br_e / suma );
		
	}
	
	public static void main(String[] args) {
		
		if (args.length < 1) {
			System.err.println("Program mora imati barem jedan unos!");
			System.exit(1);
		}
		
		double[] polje = new double[args.length];
		
		for(int i = 0; i < args.length; i++) {
			polje[i] = Double.parseDouble(args[i]);
		}
		
		DecimalFormat formatter = new DecimalFormat("0.000");
		
		System.out.print("Aritemticka sredina iznosi: ");
		System.out.println( formatter.format( ari_s(polje) ) );
		
		System.out.print("Geometrijska sredina iznosi: ");
		System.out.println( formatter.format( geo_s(polje) ) );
		
		System.out.print("Harmonijska sredina iznosi: ");
		System.out.println( formatter.format( har_s(polje) ) );
		
	}
}
