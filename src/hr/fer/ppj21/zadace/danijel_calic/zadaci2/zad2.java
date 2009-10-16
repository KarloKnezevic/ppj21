package hr.fer.ppj21.zadace.danijel_calic.zadaci2;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.NumberFormat;
import java.util.Locale;
/**
 * @author Danijel Calic
 * @version 1.0
 */
public class zad2 {

	public static void main(String[] args) {
        BufferedReader in = null;    
		try { 
			System.out.println("Unesi ime datoteke: {primjer.txt}");
			in = new BufferedReader(new InputStreamReader(System.in));
			String datoteka = in.readLine();
			in.close();
			File file = new File ("src\\hr\\fer\\ppj21\\zadace\\danijel_calic\\zadaci2\\" + datoteka);
			in = new BufferedReader(new FileReader(file));
		    while(true) { 
		    	 String linija = in.readLine(); 
		    	 if(linija==null) break;   
			     obradi(linija);
		    }
		} catch (FileNotFoundException e) { 
			 System.err.println("Ne mogu otvoriti datoteku."); 
			 System.exit(11); 	
		} catch (IOException e){
			System.err.println("Greska prilikom citanja.");
			System.exit(11);
		}catch(Exception e){
			e.printStackTrace();
			System.exit(21);
		} finally {	 
			try{in.close();
			}catch(IOException e){ 
				System.err.println("Greska prilikom zatvaranja.");
				System.exit(11);
			}
		}
		
	}
	/**
	 * Na osnovu parsirane linije stvara doticni geometrijski lik 
	 * i na komandnu liniju ispisuje njegov polozaj,dimenzije,opseg i povrsinu.
	 * @param linija
	 *             Linija koja sadrzi opis geometrijskog lika
	 */
	private static void obradi(String linija)  {
		String[] element = linija.split(" ");
		String[] argument = new String[element.length-1];
		
		for(int i=1; i<element.length; i++){
			argument[i-1]= element[i];
		}
		
		NumberFormat f = NumberFormat.getInstance(Locale.ENGLISH);
		f.setMinimumFractionDigits(2);
		f.setMinimumIntegerDigits(4);
		f.setGroupingUsed(false);
		
		try{
			if(element[0].equals("LINIJA")){
				Linija lin =(Linija) Linija.fromStringArray(argument);
				System.out.println(lin.toString() + " " + f.format(lin.getOpseg()) 
						           + " " + f.format(lin.getPovrsina()));
			}else if(element[0].equals("KVADRAT")){
				Kvadrat kvad =(Kvadrat) Kvadrat.fromStringArray(argument);
				System.out.println(kvad.toString() + " " + f.format(kvad.getOpseg()) 
						           + " " + f.format(kvad.getPovrsina()));
			}else if(element[0].equals("PRAVOKUTNIK")){
			    Pravokutnik prav = (Pravokutnik)Pravokutnik.fromStringArray(argument);
			    System.out.println(prav.toString() + " " + f.format(prav.getOpseg()) 
			    					+ " " + f.format(prav.getPovrsina()));
			}else if(element[0].equals("ELIPSA")){
				Elipsa elip= (Elipsa) Elipsa.fromStringArray(argument);
				System.out.println(elip.toString() + " " + f.format(elip.getOpseg()) 
									+ " " + f.format(elip.getPovrsina()));
			}else if(element[0].equals("KRUZNICA")){
				Kruznica kruz = (Kruznica)Kruznica.fromStringArray(argument);
				System.out.println(kruz.toString() + " " + f.format(kruz.getOpseg()) 
								    + " " + f.format(kruz.getPovrsina()));
			}else{
				System.out.println("Nepoznat razred");
			}
			
		} catch(NumberFormatException e){
			System.out.println("Nevaljani argument");
		} catch(IllegalArgumentException e){
			System.out.println("Krvi broj argumenata");
		}
	}
}


