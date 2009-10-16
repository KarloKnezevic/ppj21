package hr.fer.ppj21.zadace.danijel_calic.zadaci2;

/**
 * @author Danijel Calic
 * @version 1.0
 * 
 * GeometrijskiLik je osnova za izvodenje svih geometrijskih likova.
 * Razred definira nekoliko osnovnih metoda koje ce biti zajednicke
 * geometrijskim likovima.
 */
public class GeometrijskiLik {

	/** Privatni element koji pohranjuje ime lika */
	private String ime;
	
	/** Konstruktor geometrijskog lika
	 * @param ime ime geometrijskog lika
	 */
	public GeometrijskiLik(String ime) {
		this.ime = ime;
	}
	
	/** 
	 * Dohvat imena geometrijskog lika
	 * @return ime lika 
	 */
	public String getIme() {
		return this.ime;
	}
	
	/** 
	 * Dohvat opsega geometrijskog lika
	 * @return opseg lika 
	 */
	public double getOpseg() {
		return 0;
	}
	
	/** 
	 * Dohvat površine geometrijskog lika 
	 * @return povrsinu lika
	 */
	public double getPovrsina() {
		return 0.0;
	}
	
	/**
	 * Ispituje da li geometrijski lik sadrzi zadanu tocku
	 * @param x x-kordinata tocke
	 * @param y y-kordinata tocke
	 * @return Da li je tocka unutar geom. lika
	 */
	public boolean sadrziTocku(int x, int y){
		return false;
	}
	/**
	 * Iscrtavaje geom. lika na sliku
	 * @param slika
	 * 			  Slika na koju iscrtavamo geom. lik
	 */
	public void popuniLik(Slika slika){
		for(int i=0; i<slika.getSirina();i++){
			for(int j=0; j<slika.getVisina();j++){
				if(sadrziTocku(i,j)){
					slika.upaliTocku(i, j);
				}
			}
		}
		
	}

	/** 
	 * Metoda za usporedbu geometrijskih likova. 
	 * @return true ako su likovi jednaki, inace false
	 */
	public boolean equals(Object obj) {
		if (!(obj instanceof GeometrijskiLik)) return false;
		GeometrijskiLik drugi = (GeometrijskiLik) obj;
		return ime.equals(drugi.ime);
	}

	/** 
	 * Vraca tekstualni prikaz ovog geometrijskog lika.
	 * @return tekstualni prikaz
	 */
	public String toString() {
		return ime;
	}
}
