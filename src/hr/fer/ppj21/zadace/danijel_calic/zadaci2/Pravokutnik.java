package hr.fer.ppj21.zadace.danijel_calic.zadaci2;

/**
 * @author Danijel Calic
 * @version 1.0
 * 
 * Pravokutnik je dio ravnine omeden okomitim i vodoravnim pravcem koji prolazi
 * kroz gornji lijevi ugao, a rasprostiranje desno i dolje odredeno je sirinom i
 * visinom.
 * 
 * Napomena: ovakva definicija onemogucava rad s pravokutnicima koji su u
 * prostoru zarotirani za neki kut koji nije visekratnik od 90 stupnjeva.
 */
public class Pravokutnik extends GeometrijskiLik {
	/** X koordinata gornjeg lijevog vrha. */
	private int vrhX;

	/** Y koordinata gornjeg lijevog vrha. */
	private int vrhY;

	/** Sirina pravokutnika. */
	private int sirina;

	/** Visina pravokutnika. */
	private int visina;

	/**
	 * Konstruktor pravokutnika.
	 */
	public Pravokutnik(int vrhX, int vrhY, int sirina, int visina) {
		super("Pravokutnik"); // Poziv konstruktora od g. lika
		this.vrhX = vrhX;
		this.vrhY = vrhY;
		this.sirina = sirina;
		this.visina = visina;
	}

	/**
	 * Zasticeni konstruktor pravokutnika. Sluzi kao potpora za razrede koji
	 * nasljeduju ovaj razred i zele definirati svoje vlastito ime.
	 */
	protected Pravokutnik(String ime, int vrhX, int vrhY, int sirina, int visina) {
		super(ime); // Poziv konstruktora od g. lika
		this.vrhX = vrhX;
		this.vrhY = vrhY;
		this.sirina = sirina;
		this.visina = visina;
	}

	/**
	 * Metoda za dohvat sirine pravokutnika.
	 * 
	 * @return sirinu pravokutnika
	 */
	public int getSirina() {
		return sirina;
	}

	/**
	 * Metoda za dohvat visine pravokutnika.
	 * 
	 * @return visinu pravokutnika.
	 */
	public int getVisina() {
		return visina;
	}

	/**
	 * Metoda za dohvat X koordinate gornjeg lijevog vrha pravokutnika.
	 * 
	 * @return x koordinatu vrha
	 */
	public int getVrhX() {
		return vrhX;
	}

	/**
	 * Metoda za dohvat Y koordinate gornjeg lijevog vrha pravokutnika.
	 * 
	 * @return y koordinatu vrha
	 */
	public int getVrhY() {
		return vrhY;
	}

	/**
	 * Izracun opsega pravokutnika; ova metoda prekriva istu metodu definiranu u
	 * razredu GeometrijskiLik.
	 */
	public double getOpseg() {
		return (double)(2 * sirina + 2 * visina);
	}

	/**
	 * Izracun povrsine pravokutnika; ova metoda prekriva istu metodu definiranu
	 * u razredu GeometrijskiLik.
	 */
	public double getPovrsina() {
		return sirina * visina;
	}
	
	/**
	 * Ispituje da li pravokutnik sadrzi zadanu tocku
	 * @param x x-kordinata tocke
	 * @param y y-kordinata tocke
	 * @return Da li je tocka unutar pravokutnika
	 */
	public boolean sadrziTocku(int x, int y){
		boolean b = false;
		if(x >= vrhX && x < vrhX + sirina && y >= vrhY && y < vrhY + visina) b = true;
		return b;
	}
	/**
	 * Iscrtavaje pravokutnika na sliku
	 * @param slika
	 * 			  Slika na koju iscrtavamo pravokutnik
	 */
	public void popuniLik(Slika slika){
		for(int i = vrhX; i < vrhX + getSirina();i++){
			for(int j = vrhY; j < vrhY + getVisina(); j++){
				slika.upaliTocku(i, j);
			}
		}
	}

	/** 
	 * Metoda za usporedbu pravokutnika. 
	 * @return true ako su pravokutnici jednaki, inace false
	 */
	public boolean equals(Object obj) {
		if (!(obj instanceof Pravokutnik))
			return false;
		Pravokutnik drugi = (Pravokutnik) obj;
		return vrhX == drugi.vrhX && vrhY == drugi.vrhY
				&& sirina == drugi.sirina && visina == drugi.visina;
	}

	/** 
	 * Vraca tekstualni prikaz ovog pravokutnika.
	 * @return tekstualni prikaz
	 */
	public String toString() {
		return super.toString() + "(" + vrhX + "," + vrhY + "," + sirina + ","
				+ visina + ")";
	}
	
	/** 
	  * Metoda koja na temelju argumenata zapisanih u polju stringova stvara pravokutnik
	  * @param parametri 
	  * 			   Polje stringova koje cuva parametre konstruktora 
	  * @return novi primjerak pravokutnika 
	  * @throws IllegalArgumentException
	  *                Ne odgovarajuci broj argumenata
	  */ 
	public static GeometrijskiLik fromStringArray(String[] parametri){
		if (parametri.length != 4) throw  new IllegalArgumentException();
		int arg_vX = Integer.parseInt(parametri[0]); 
		int arg_vY = Integer.parseInt(parametri[1]); 
		int arg_S = Integer.parseInt(parametri[2]); 
		int arg_V = Integer.parseInt(parametri[3]); 
		return new Pravokutnik(arg_vX, arg_vY, arg_S, arg_V);
	}
}
