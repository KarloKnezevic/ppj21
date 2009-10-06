package hr.fer.ppj21.zadace.josip_lehpamer.zadaci1;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;


public class zadatak105 {
	
	private static char[] okreni(char[] polje2){

		int d=polje2.length;
		char[] polje3 = new char[d];
		
		for( int i=1; i <= d; i++ ){
			polje3[(d-i)]=polje2[i-1];
		}
		
		return polje3;

	
	}
	
	private static boolean usporedi(char[] a, char[] b){
		
		String tekst1 = new String(a);
		String tekst2 = new String(b);
		String lcTekst1 = tekst1.toLowerCase();
		String lcTekst2 = tekst2.toLowerCase();
		
		return(lcTekst1.equals( lcTekst2 ));		
	}
	public static void main(String[] args) throws IOException {
		BufferedReader reader = new BufferedReader (
				new InputStreamReader(System.in )
		);
		
		
		String polje;
		char[] obrnut;
		String obrnutS;
		boolean dalje=true;
		
		while (dalje){
			
			System.out.print("Unesite redak : ");
			polje = reader.readLine();
			
			obrnut=okreni(polje.toCharArray());
			obrnutS=new String(obrnut);
			
			System.out.println("Obrnuti ispis : " + obrnutS);
			
			if (usporedi(polje.toCharArray(), obrnut)) {
				System.out.println(" Isti su");
				dalje=false;
			}
	
		}
	}
}
