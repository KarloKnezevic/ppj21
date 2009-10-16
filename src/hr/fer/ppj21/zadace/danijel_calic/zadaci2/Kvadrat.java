package hr.fer.ppj21.zadace.danijel_calic.zadaci2;

/**
 * @author Danijel Calic
 * @version 1.0
 * 
 * Kvadrat je pravokutnik cije su sve stranice iste duljine.
 */
public class Kvadrat extends Pravokutnik {

	/**
	 * Konstruktor kvadrata.
	 */
	public Kvadrat(int vrhX, int vrhY, int stranica) {
		super("Kvadrat", vrhX, vrhY, stranica, stranica);
	}

	/**
	 * Izracun opsega kvadrata
	 */
	public double getOpseg() {
		return (double)(4 * super.getSirina());
	}

	/**
	 * Izracun povrsine kvadrata
	 */
	public double getPovrsina() {
		return super.getSirina() * super.getSirina();
	}
	/**
	 * Ispituje da li kvadrat sadrzi zadanu tocku
	 * @param x x-kordinata tocke
	 * @param y y-kordinata tocke
	 * @return Da li je tocka unutar kvadrata
	 */
	public boolean sadrziTocku(int x, int y){
		boolean b = false;
		if(x >= getVrhX() && x < getVrhX() + getSirina() && y >= getVrhY() 
				&& y < getVrhY() + getVisina()) b = true;
		return b;
	}
	/**
	 * Iscrtavaje kvadrat na sliku
	 * @param slika
	 * 			  Slika na koju iscrtavamo kvadrat
	 */
	public void popuniLik(Slika slika){
		for(int i = getVrhX(); i < getVrhX() + getSirina();i++){
			for(int j = getVrhY(); j < getVrhY() + getVisina(); j++){
				slika.upaliTocku(i, j);
			}
		}
	}
	
	/** 
	 * Metoda za usporedbu kvadrata. 
	 * @return true ako su kvadrati jednaki, inace false
	 */
	public boolean equals(Object obj) {
		if (!(obj instanceof Kvadrat))
			return false;
		Kvadrat drugi = (Kvadrat) obj;
		return super.equals(drugi);
	}

	/** 
	 * Vraca tekstualni prikaz ovog kvadrata.
	 * @return tekstualni prikaz
	 */
	public String toString() {
		return "Kvadrat" + "(" + super.getVrhX() + "," + super.getVrhY() + ","
				+ super.getSirina() + ")";
	}
	
	/** 
	  * Metoda koja na temelju argumenata zapisanih u polju stringova stvara kvadrat
	  * @param parametri 
	  * 			   Polje stringova koje cuva parametre konstruktora 
	  * @return novi primjerak kvadrata
	  * @throws IllegalArgumentException
      *                Ne odgovarajuci broj argumenata 
	  */ 
	public static GeometrijskiLik fromStringArray(String[] parametri){
		 if (parametri.length != 3) throw  new IllegalArgumentException();
		 int arg_vX= Integer.parseInt(parametri[0]); 
		 int arg_vY = Integer.parseInt(parametri[1]); 
		 int arg_S = Integer.parseInt(parametri[2]);  
		 return new Kvadrat(arg_vX, arg_vY, arg_S);
	}
}
