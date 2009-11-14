
public class testDeclaration {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		int a ;   //GRESKA U GRAMATICI - prilikom deklaracija varijable,moramo je odmah i inicijalizirati
		int a,b;  //GRESKA- nije dozvoljeno nizanje deklaracija
		
		System.out.println("StringLiteral");     //GRESKA U GRAMATICI - nemamo definiranu leksicku jedinku za String konstante
		
		while(a>=5){     //GRESKA U GRAMATICI - nepostoji sintakstna cijelina za >= ili <=
			
		}
	}

}
