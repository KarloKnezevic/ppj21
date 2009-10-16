package hr.fer.ppj21.zadace.danijel_calic.zadaci2;
/**
 * @author Danijel Calic
 * @version 1.0
 */
public class Elipsa extends GeometrijskiLik {
	private int centarX;
	private int centarY;
	private int radiusX;
	private int radiusY;

	/**
	 * Konstruktor elipse 
	 */
	protected Elipsa(String ime,int centarX,int centarY,int radiusX,int radiusY) {
		super(ime);
		this.centarX = centarX;
		this.centarY = centarY;
		this.radiusX = radiusX;
		this.radiusY = radiusY;
	}
	/**
	 * Konstruktor elipse
	 */
	public Elipsa(int centarX,int centarY,int radiusX,int radiusY) {
		super("Elipsa");
		this.centarX = centarX;
		this.centarY = centarY;
		this.radiusX = radiusX;
		this.radiusY = radiusY;
	}
	
	public int getCentarX(){
		return centarX;
	}
	
	public int getCentarY(){
		return centarY;
	}
	
	public int getRadiusX(){
		return radiusX;
	}
	
	public int getRadiusY(){
		return radiusY;
	}
	/**
	 * Izracun opsega elipse
	 */
	public double getOpseg() {
		return Math.PI*(3*(radiusX+radiusY)-
				Math.pow((3*radiusX+radiusY)*(radiusX+3*radiusY), 1./2));
	}

	/**
	 * Izracun povrsine elipse
	 */
	public double getPovrsina() {
		return radiusX*radiusY*Math.PI;
	}
	/**
	 * Ispituje da li elipsa sadrzi zadanu tocku
	 * @param x x-kordinata tocke
	 * @param y y-kordinata tocke
	 * @return Da li je tocka unutar elipse
	 */
	public boolean sadrziTocku(int x, int y){
		boolean b = false;
		if(Math.abs(x-centarX) <= radiusX  && Math.abs(y-centarY) <= radiusY ){
			x=centarX-x;    //udaljenost y komponente tocke gledano od centra Elipse
			y=centarY-y;    //udaljenost x komponente tocke gledano od centra Elipse
			
			//Uvjet pripadnosti tocke elipsi
			double rez = ((double)x*x)/(radiusX*radiusX) + ((double)y*y)/(radiusY*radiusY);
			if (rez <= 1) {
				b=true; 
			}
		}
		return b;
	}
	
	public String toString(){
		return super.getIme() +  "(" + centarX + "," + centarY + "," + radiusX + "," + radiusY + ")";
	}
	/** 
	  * Metoda koja na temelju argumenata zapisanih u polju stringova stvara elipsu
	  * @param parametri 
	  * 			   Polje stringova koje cuva parametre konstruktora 
	  * @return novi primjerak elipse 
	  * @throws IllegalArgumentException
      *                Ne odgovarajuci broj argumenata
	  */ 
	public static GeometrijskiLik fromStringArray(String[] parametri) throws  IllegalArgumentException{
		 if (parametri.length != 4) throw  new IllegalArgumentException();
		 int arg_cX = Integer.parseInt(parametri[0]); 
		 int arg_cY = Integer.parseInt(parametri[1]); 
		 int arg_rX = Integer.parseInt(parametri[2]); 
		 int arg_rY = Integer.parseInt(parametri[3]); 
		 return new Elipsa(arg_cX, arg_cY, arg_rX, arg_rY);
	}
}
