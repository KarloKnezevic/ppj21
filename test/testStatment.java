
public abstract class testStatment {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		int[][] x = new int[][];   //Greska - mozemo definirati samo jednodimenzionalne nizove tipa int
		int y[] = { 3,4,5};         //Greska - nije dozvoljeno deklariranje i inicijalizacija niza skupa;
		{{{System.out.println(Text);}}}  //Trebalo bi biti ispravno
		
		do{    //GRESKA U GRAMATICI - nismo definirali do-while naredbu;
			
		}while(a<5);
		
		if(a<5){
			b=5;
		}else if(a>=5 && a<=10){           //GRESKA U GRAMATICI - nemamo definiranu kljucnu rijec "else if"
			b=3;
		}else{
			b=1;
		}
		
		
	}
	
	
	

}
