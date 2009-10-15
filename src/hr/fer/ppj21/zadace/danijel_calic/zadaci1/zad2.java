package hr.fer.ppj21.zadace.danijel_calic.zadaci1;

/**
 * @author Danijel Calic
 * @version 1.0
 */
public class zad2 {

	public static void main(String[] args) {
		if (args.length != 1) {
			System.err.println("Broj argumenata mora biti jednak 1");
			System.exit(1);
		}

		int broj = 0;
		try {
			broj = Integer.parseInt(args[0]);
		} catch (NumberFormatException e) {
			System.err.println("String nije moguce parsirati u broj");
			System.exit(1);
		}
		int rez = fibbonachijevBroj(broj);
		System.out.println(rez);
	}

	/**
	 * Racuna Fibbonachijev broj za zadani redni broj niza
	 * @param broj 
	 *           Redni broj niza
	 * @return Fibbonacijev broj
	 */
	private static int fibbonachijevBroj(int broj) {
		if (broj <= 0) {
			System.err.println("Redni broj mora biti pozitivan");
			System.exit(1);
		} else if (broj > 0 && broj < 3) {
			return 1;
		}

		return fibbonachijevBroj(broj - 1) + fibbonachijevBroj(broj - 2);
	}
}
