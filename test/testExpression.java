
public class testExpression {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		boolean a;
		int rez,b,c;
		rez = 5 * -4 * !a + 3 - 2 || b && c;      //Ispravno
	    rez = --a;                      //GRESKA - nismo definirali unarne operatore
	    rez = 4--a;                     //Ispravno   4-(-a)
	}

}
