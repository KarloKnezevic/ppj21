package hr.fer.ppj21.zadace.ivan_zebic.zadatak1_2;

/**
* @author Ivan Zebiæ
* @version 1.0
*/

public class Zadatak1_2 {
	
	private static int Fibbonaci(int broj) {
		
		if (broj <= 1) {
			return broj;
		}
		else {
			return ( Fibbonaci(broj - 1) + Fibbonaci(broj - 2) );
		}
		
	}

	public static void main(String[] args) {
		
		if (args.length != 1) {
		
			System.err.println("Program mora imati tocno jedan argument!");
			
			System.exit(1);
		}
		
		int broj = Integer.parseInt(args[0]);
		
		System.out.print(broj + ". fibbonacijev broj je " + Fibbonaci(broj));

	}

}