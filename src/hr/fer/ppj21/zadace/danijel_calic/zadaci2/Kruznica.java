package hr.fer.ppj21.zadace.danijel_calic.zadaci2;

/**
 * @author Danijel Calic
 * @version 1.0
 */
public class Kruznica extends Elipsa {
	/**
	 * Konstruktor kruznice 
	 */
	public Kruznica(int centarX, int centarY, int radius) {
		super("Kruznica", centarX, centarY, radius, radius);
	}
	
	/**
	 * Izracun opsega krivulje
	 */
	public double getOpseg() {
		return (double)(2 * Math.PI * getRadiusX());
	}

	/**
	 * Izracun povrsine krivulje
	 */
	public double getPovrsina() {
		return Math.pow(getRadiusX(),2)*Math.PI;
	}
	
	/**
	 * Ispituje da li kruznica sadrzi zadanu tocku
	 * @param x x-kordinata tocke
	 * @param y y-kordinata tocke
	 * @return Da li je tocka unutar kruznice
	 */
	public boolean sadrziTocku(int x, int y){
		boolean b = false;
		int dx = Math.abs(x - getCentarX());
		int dy = Math.abs(y- getCentarY());
		double udaljenostOdS = Math.pow(dx*dx+dy*dy, 1./2);
		if (udaljenostOdS <= getRadiusX()){
			b = true;
		}
		return b;
	}
	/**
	 * Iscrtavaje kruznicu na sliku
	 * @param slika
	 * 			  Slika na koju iscrtavamo kruznicu
	 */

	public String toString() {
		return super.getIme() + "(" + super.getCentarX() + ","
				+ super.getCentarY() + "," + getRadiusY() + ")";
	}

	/**
	 * Metoda koja na temelju argumenata zapisanih u polju stringova stvara
	 * kruznicu
	 * @param parametri
	 *            Polje stringova koje cuva parametre konstruktora
	 * @return novi primjerak kruznice
	 * @throws IllegalArgumentException
	 *             Ne odgovarajuci broj argumenata
	 */
	public static GeometrijskiLik fromStringArray(String[] parametri) throws IllegalArgumentException {
		if (parametri.length != 3) throw new IllegalArgumentException();
		int arg_cX = Integer.parseInt(parametri[0]);
		int arg_cY = Integer.parseInt(parametri[1]);
		int arg_R = Integer.parseInt(parametri[2]);
		return new Kruznica(arg_cX, arg_cY, arg_R);
	}

}
