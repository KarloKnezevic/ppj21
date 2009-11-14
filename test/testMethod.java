
public class testMethod {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
	

	}
	public static int obaviPosao(){   //GRESKA U GRAMATICI-nije dozvoljeno definiranje staticne metode(osim Main)
		return 0;
	}
	
	int obaviPosao1(){            //GRESKA U GRAMATICI- mora biti definirano vidljivost metode
		return 1;
	}
	
	public void obaviPosao2(){   
		int rez= 5 ;            
		return rez;             //GRESKA U GRAMATICI-ako nasa Mini java moze definirati void,onda funkcija nebi smijela
								//imati return naredbu
	}
	
}
