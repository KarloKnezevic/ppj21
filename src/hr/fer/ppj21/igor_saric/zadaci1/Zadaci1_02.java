package hr.fer.ppj21.igor_saric.zadaci1;

/**
* @author Igor Saric
* @version 1.0
*/

public class Zadaci1_02 {
	
	private static int fibbonaci(int broj) {
		
		/* izracunaj fibbonacija */
		if (broj <= 1) {
			return broj;
		}
		else {
			return ( fibbonaci(broj - 1) + fibbonaci(broj - 2) );
		}
		
	}

	public static void main(String[] args) {
		
		/* provjera broja argumenata */
		if (args.length != 1) {
			System.err.println("Program mora imati tocno jedan argument!");
			System.exit(1);
		}
		
		/* pretvori argument u int */
		int broj = Integer.parseInt(args[0]);
		
		/* ispisi fibbonacijev broj */
		System.out.print(broj + ". fibbonacijev broj je " + fibbonaci(broj));

	}

}
