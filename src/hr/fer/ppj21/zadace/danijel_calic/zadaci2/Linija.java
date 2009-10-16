package hr.fer.ppj21.zadace.danijel_calic.zadaci2;

/**
 * @author Danijel Calic
 * @version 1.0
 * 
 * Linija je jedan konkretan primjer geometrijskog lika. To je dio pravca
 * odreden pocetnom i zavrsnom tockom u 2D prostoru.
 */
public class Linija extends GeometrijskiLik {
	/** X koordinata pocetka linije. */
	private int x0;

	/** Y koordinata pocetka linije. */
	private int y0;

	/** X koordinata kraja linije. */
	private int x1;

	/** Y koordinata kraja linije. */
	private int y1;

	/**
	 * Konstruktor linije.
	 */
	public Linija(int x0, int y0, int x1, int y1) {
		super("Linija"); // Poziv konstruktora od geom. lika
		this.x0 = x0;
		this.y0 = y0;
		this.x1 = x1;
		this.y1 = y1;
	}

	/**
	 * Metoda za dohvat X koordinate pocetne tocke.
	 * 
	 * @return x koordinatu pocetne tocke
	 */
	public int getX0() {
		return x0;
	}

	/**
	 * Metoda za dohvat X koordinate zavrsne tocke.
	 * 
	 * @return x koordinatu zavrsne tocke
	 */
	public int getX1() {
		return x1;
	}

	/**
	 * Metoda za dohvat Y koordinate pocetne tocke.
	 * 
	 * @return y koordinatu pocetne tocke
	 */
	public int getY0() {
		return y0;
	}

	/**
	 * Metoda za dohvat Y koordinate zavrsne tocke.
	 * 
	 * @return y koordinatu zavrsne tocke
	 */
	public int getY1() {
		return y1;
	}
	
	/**
	 * Ispituje da li na linija prolazi kroz tocku
	 * @param x x-kordinata tocke
	 * @param y y-kordinata tocke
	 * @return Da li je tocka na liniji
	 */
	public boolean sadrziTocku(int x, int y){
		boolean b = false;
		if( ((x >= x0 && x<=x1) || (x <= x0 && x>=x1)) 
				&& ((y >= y0 && y<=y1) || (y <= y0 && y>=y1)) ){

			int dy = y1-y0;
			int dx = x1-x0;
			if (dx==0 || dy ==0){
				b = true;
			}else{
				double a = (double)dy/dx;
				double Yy = a*(x-x0)+y0;
				double rez = Math.abs(Yy - y);
				if (rez<=0.5) b=true;
			}
		}
		return b;
	}
	
	/*JEDNOSTAVNIJI NACIN ISCRTAVANJA(MANJE EFIKASAN)
	/**
	 * Iscrtavaje linije na sliku 
	 * @param slika
	 * 			  Slika na koju iscrtavamo linija
	 *
	public void popuniLik(Slika slika){
		
		for(int i=0; i<slika.getSirina();i++){
			for(int j=0; j<slika.getVisina();j++){
				if(sadrziTocku(i,j)){
					slika.upaliTocku(i, j);
				}
			}
		}
	}
    */
	
	/**
     *Iscrtavanje linije na sliku pomocu BRESENHAMOVOG POSTUPAKA
     */
	public void popuniLik(Slika slika){		
		if( x0 <= x1 ) { 
			  if( y0 <= y1 ) crtajLiniju1(x0,y0,x1,y1,slika); 
			  else crtajLiniju2(x0,y0,x1,y1,slika); 
	    } else { 
			  if( y0 >= y1 ) crtajLiniju1(x1,y1,x0,y0,slika); 
			  else crtajLiniju2(x1,y1,x0,y0,slika); 
	    }
	}
	/**
	 *Crta liniju za kuteve od 0-90 
	 */
	private void crtajLiniju1(int xs, int ys, int xe, int ye, Slika slika) {
		int x, yc;
		int a, yf;

		if (ye - ys <= xe - xs) {
			a = 2 * (ye - ys);
			yc = ys;
			yf = -(xe - xs);
			for (x = xs; x <= xe; x++) {
				slika.upaliTocku(x, yc);
				yf = yf + a;
				if (yf >= 0) {
					yf = yf - 2 * (xe - xs);
					yc = yc + 1;
				}
			}
		} else {
			x = xe;
			xe = ye;
			ye = x;
			x = xs;
			xs = ys;
			ys = x;
			a = 2 * (ye - ys);
			yc = ys;
			yf = -(xe - xs);
			for (x = xs; x <= xe; x++) {
				slika.upaliTocku(yc, x);
				yf = yf + a;
				if (yf >= 0) {
					yf = yf - 2 * (xe - xs);
					yc = yc + 1;
				}
			}
		}
	}
	/**
	 *Crta liniju za kuteve od 0-(-90) 
	 */
	private void crtajLiniju2(int xs, int ys, int xe, int ye, Slika slika) {
		int x, yc;
		int a, yf;

		if (-(ye - ys) <= xe - xs) {
			a = 2 * (ye - ys);
			yc = ys;
			yf = (xe - xs);
			for (x = xs; x <= xe; x++) {
				slika.upaliTocku(x, yc);
				yf = yf + a;
				if (yf <= 0) {
					yf = yf + 2 * (xe - xs);
					yc = yc - 1;
				}
			}
		} else {
			x = xe;
			xe = ys;
			ys = x;
			x = xs;
			xs = ye;
			ye = x;
			a = 2 * (ye - ys);
			yc = ys;
			yf = (xe - xs);
			for (x = xs; x <= xe; x++) {
				slika.upaliTocku(yc, x);
				yf = yf + a;
				if (yf <= 0) {
					yf = yf + 2 * (xe - xs);
					yc = yc - 1;
				}
			}
		}
	}

	/** 
	 * Metoda za usporedbu linija. 
	 * @return true ako su linije jednake, inace false
	 */
	public boolean equals(Object obj) {
		if (!(obj instanceof Linija)) return false;
		Linija druga = (Linija) obj;
		return x0 == druga.x0 && y0 == druga.y0 && x1 == druga.x1
				&& y1 == druga.y1;
	}

	/** 
	 * Vraca tekstualni prikaz ove linije.
	 * @return tekstualni prikaz
	 */
	public String toString() {
		return super.toString() + "(" + x0 + "," + y0 + "," + x1 + "," + y1 + ")";
	}
	
	/** 
	  * Metoda koja na temelju argumenata zapisanih u polju stringova stvara liniju 
	  * @param parametri 
	  *                Polje stringova koje cuva parametre konstruktora 
	  * @return novi primjerak linije 
	  * @throws IllegalArgumentException
	  *                Ne odgovarajuci broj argumenata
	  */ 
	 public static GeometrijskiLik fromStringArray(String[] parametri) { 
		 if (parametri.length != 4) throw  new IllegalArgumentException();
		 int arg_x0 = Integer.parseInt(parametri[0]); 
		 int arg_y0 = Integer.parseInt(parametri[1]); 
		 int arg_x1 = Integer.parseInt(parametri[2]); 
		 int arg_y1 = Integer.parseInt(parametri[3]); 
		 return new Linija(arg_x0,arg_y0,arg_x1,arg_y1); 
	 } 
	 
	
}
