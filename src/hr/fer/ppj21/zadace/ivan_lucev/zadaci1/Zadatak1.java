package hr.fer.ppj21.zadace.ivan_lucev.zadaci1;
import java.text.DecimalFormat;
import java.lang.Math;

public class Zadatak1 {

	public static void main(String[] args) {
		int brojArgumenata = args.length;
		double[] brojevi = new double [brojArgumenata];
		
		for (int i=0; i<brojArgumenata; i++){
			brojevi[i] = Double.parseDouble(args[i]);
		}
		double zbroj = 0; 
		for (int i=0; i<brojArgumenata; i++){
			zbroj += brojevi[i];
			
		}
		
		double aritmeticka = aritmetickaSredina(brojevi);
		double geometrijska = geometrijskaSredina(brojevi);
		double harmonijska = harmonijskaSredina(brojevi);
		
		DecimalFormat formatter = new DecimalFormat("0.000");
		
		System.out.println("Aritmeticka sredina je: "+formatter.format(aritmeticka));
		System.out.println("Geometrijska sredina je: "+formatter.format(geometrijska));
		System.out.println("Harmonijska sredina je: "+formatter.format(harmonijska));		
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
	
	public static double geometrijskaSredina(double[] polje){
		int duljinaPolja = polje.length;
		double umnozak = 1;
		for (int i=0; i<duljinaPolja; i++){
			umnozak *= polje[i];
		}
		double geometrijska = Math.pow(umnozak,1.0/duljinaPolja);
		
		return geometrijska;		
		
	}

	public static double harmonijskaSredina(double[] polje){
		int duljinaPolja = polje.length;
		double zbroj = 0;
		for (int i=0; i<duljinaPolja; i++){
			zbroj += 1/polje[i];
		}
		double harmonijska = 1/(zbroj/duljinaPolja);
		
		return harmonijska;		
		
	}
}