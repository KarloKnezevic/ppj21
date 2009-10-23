package hr.fer.ppj21.zadace.ana_mihalic.zadaci1;

import java.text.DecimalFormat;

public class Zadatak1 {

	public static void main(String[] args) {
		
		if(args.length == 0) {
			System.out.println("Program mora imati barem jedan argument!");
			System.exit(1);
			}
		
		int brojArgumenata = args.length;
		double[] brojevi = new double [brojArgumenata];
		
		for (int i=0; i<brojArgumenata; i++){
			brojevi[i] = Double.parseDouble(args[i]);
		}
		double zbroj = 0; 
		for (int i=0; i<brojArgumenata; i++){
			zbroj += brojevi[i];
			
		}
		
		double arSredina = aritmetickaSredina(brojevi);
		
		DecimalFormat formatter = new DecimalFormat("0.000");
		
		System.out.println("Aritmeticka sredina je: "+formatter.format(arSredina));	
	}

	public static double aritmetickaSredina(double[] polje){
		
		int duljinaPolja = polje.length;
		double zbroj = 0;
		for (int i=0; i<duljinaPolja; i++){
			zbroj += polje[i];
		}
		
		double aritmeticka = zbroj/duljinaPolja;
		
		return aritmeticka;		
		
	}


}