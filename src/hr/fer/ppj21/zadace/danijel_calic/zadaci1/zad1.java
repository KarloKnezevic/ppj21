package hr.fer.ppj21.zadace.danijel_calic.zadaci1;

import java.text.NumberFormat;
import java.util.Locale;

/**
 * @author Danijel Calic
 * @version 1.0
 */
class zad1 {
	
	public static void main(String[] args) {
		double[] argsDouble = new double[args.length];
		try {
			for (int i = 0; i < argsDouble.length; i++) {
				argsDouble[i] = Double.parseDouble(args[i]);
			}
		} catch (NumberFormatException e) {
			System.err.println("Neispravan brojevni niz");
			System.exit(1);
		}
		double rez;

		NumberFormat formatter = NumberFormat.getInstance(Locale.ENGLISH);
		formatter.setMaximumFractionDigits(3);

		rez = aritmetickaSredina(argsDouble);
		System.out.println("Aritmeticka sredina je: " + formatter.format(rez));
		rez = geometrijskaSredina(argsDouble);
		System.out.println("Geometrijska sredina je: " + formatter.format(rez));
		rez = harmonijskaSredina(argsDouble);
		System.out.println("Harmonijska sredina je " + formatter.format(rez));

	}

	/**
	 * Racuna aritmeticku sredinu niza
	 * @param niz 
	 *          Niz brojeva
	 * @return Aritmeticka sredina niza
	 */
	public static double aritmetickaSredina(double[] niz) {
		double rez = 0;
		for (double broj : niz) {
			rez += broj;
		}
		rez = rez / niz.length;
		return rez;
	}

	/**
	 * Racuna geometrijsku sredinu niza
	 * @param niz 
	 *          Niz brojeva
	 * @return Geometrijska sredina niza
	 */
	public static double geometrijskaSredina(double[] niz) {
		double rez = 1;
		for (double broj : niz) {
			rez *= broj;
		}
		rez = Math.pow(rez, 1.0 / niz.length);
		return rez;
	}

	/**
	 * Racuna harmonijsku sredinu niza
	 * @param niz 
	 *          Niz brojeva
	 * @return Harmonijska sredina niza
	 */

	public static double harmonijskaSredina(double[] niz) {
		double rez = 0;
		for (double broj : niz) {
			rez += 1.0 / broj;
		}
		rez = (double) niz.length / rez;
		return rez;
	}
}
