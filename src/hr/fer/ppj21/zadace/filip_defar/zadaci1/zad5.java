import java.io.BufferedReader; 
import java.io.IOException; 
import java.io.InputStreamReader;
import java.lang.Boolean;

class zad5 {
  public static void main(String args[])
  {
    String strg = "",strg2="";
  
    
    BufferedReader reader = new BufferedReader(new InputStreamReader (System.in) );
    
    do
    {
    try { strg = reader.readLine(); }
    catch (IOException a ) {System.exit(1);}  
    
    strg2 = obrni(strg);
    System.out.println(strg2);
    }
    while(!usporedi(strg,strg2));
    
    System.out.println("Kraj!");
  
  }
  
  public static Boolean usporedi(String s1, String s2)
  {
    if(s1.equals(s2)) return true;
    else return false;
  }
  
  
  public static String obrni(String strg)
  {
    int n,i;
    char niz[],niz2[];

    niz = strg.toCharArray();
    
    n = niz.length - 1;
    
    niz2 = new char[n+1];
    
    for(i=n;i>=0;i--) 
    {
          niz2[n-i] = niz[i];
    }
    
    String novi = new String(niz2); 
    
    return novi;

  
  }
}