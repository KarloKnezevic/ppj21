package hr.fer.ppj21.zadace.josip_lehpamer.zadaci1;

public class Zadatak101 {
	public static void main(String[]args) {
		int brArgumenata=args.length;

		System.out.println(
				"Aritmeticka sredina je  : "   + AritmetickaSredina (args, brArgumenata )+
				"\nGeometrijska sredina je : " + GeometrijskaSredina(args, brArgumenata )+ 
				"\nHarmonijska sredina je  : " + HarmonijskaSredina (args, brArgumenata )
		);
		
	}
	
	private static double AritmetickaSredina(String[]args, int n) {
		double suma=0.0;
		
		for (int i=0;i<n;i++){
			double j = Double.parseDouble(args[i]);
			suma += j;
		}
		
		double sredina= suma /(n);
		return sredina;
	}
	
	private static double GeometrijskaSredina(String[]args, int n) {
		double umnozak=1.0;
		
		for (int i=0;i<n;i++){
			double j = Double.parseDouble(args[i]);
			umnozak *= j;
		}
		
		double sredina= Math.pow(umnozak,1.0/n);
		return sredina;
	}
		
	private static double HarmonijskaSredina(String[]args, int n) {
		double suma=0.0;
		
		for (int i=0;i<n;i++){
			double j = Double.parseDouble(args[i]);
			suma += 1/j;
		}
		
		double sredina= n/suma;
		return sredina;	
	}
}