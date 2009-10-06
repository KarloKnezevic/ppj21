package hr.fer.ppj21.zadace.bojan_bajac.zadaci1;

import java.text.DecimalFormat;

	public class zadatak1{
		
		private static double ar_sr(double[] polje){
			double suma = 0;
			int br_elm=polje.length , i;
			
			
			for( i = 0; i<br_elm;i++){
				suma = suma+polje[i];
				
			}
		return (suma/br_elm);
	
		}

		public static void main(String[] args) {
	// cupic hehe //
			if(args.length < 1) {

				System.err.println("Program mora imati jedan argument!");

				System.exit(1);
				}
			
			double[] polje = new double[args.length];
			
			for(int i = 0; i < args.length; i++) {
				polje[i] = Double.parseDouble(args[i]);
			}
			//nema cupica //
			DecimalFormat decimale = new DecimalFormat("0.0");
				
			System.out.print("Aritemticka sredina je ");
			System.out.println( decimale.format( ar_sr(polje) ));
				
			
			}
	

}