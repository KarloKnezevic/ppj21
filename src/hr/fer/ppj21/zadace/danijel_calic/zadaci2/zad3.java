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
public class zad3 {

	public static void main(String[] args) {
		Slika s = new Slika(40,40); 
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
			     obradi(linija,s);
		    }
		} catch (FileNotFoundException e) { 
			 System.err.println("Ne mogu otvoriti datoteku."); 
			 System.exit(31); 	
		} catch (IOException e){
			System.err.println("Greska prilikom citanja.");
			System.exit(31);
		}catch(Exception e){
			e.printStackTrace();
			System.exit(31);
		} finally {	 
			try{in.close();
			}catch(IOException e){ 
				System.err.println("Greska prilikom zatvaranja.");
				System.exit(31);
			}
		}
		
		s.nacrtajSliku(System.out);
	}
	
	private static void obradi(String linija,Slika s)  {
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
				lin.popuniLik(s);
			}else if(element[0].equals("KVADRAT")){
				Kvadrat kvad =(Kvadrat) Kvadrat.fromStringArray(argument);
				kvad.popuniLik(s);
			}else if(element[0].equals("PRAVOKUTNIK")){
			    Pravokutnik prav = (Pravokutnik)Pravokutnik.fromStringArray(argument);
			    prav.popuniLik(s);
			}else if(element[0].equals("ELIPSA")){
				Elipsa elip= (Elipsa) Elipsa.fromStringArray(argument);
				elip.popuniLik(s);
			}else if(element[0].equals("KRUZNICA")){
				Kruznica kruz = (Kruznica)Kruznica.fromStringArray(argument);
				kruz.popuniLik(s);
			}			
		} catch(NumberFormatException e){
			
		} catch(IllegalArgumentException e){
			
		}
	}

}
