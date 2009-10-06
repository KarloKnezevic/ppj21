package hr.fer.ppj21.zadace.filip_defar.zadaci1;

import java.io.BufferedReader; 
import java.io.IOException; 
import java.io.InputStreamReader;

class zad6
{  
        public static void main(String args[])
        {
          String strg="", splitd[] = {""};
          int t = 1;
    
           BufferedReader reader = new BufferedReader(new InputStreamReader (System.in) );           
           
           while(t == 1) {
           try { strg = reader.readLine(); }
           catch (IOException a ) {System.exit(1);}  
           
           if(strg.contains("+"))
           {
             splitd = strg.split("[+]",2);
             System.out.println(Integer.parseInt(splitd[0]) + Integer.parseInt(splitd[1]));
           }
           
           if(strg.contains("-"))
           {
             splitd = strg.split("[-]",2);
             System.out.println(Integer.parseInt(splitd[0]) - Integer.parseInt(splitd[1]));
           }
           
           if(strg.contains("/"))
           {
             splitd = strg.split("[/]",2);
             System.out.println(Integer.parseInt(splitd[0]) / Integer.parseInt(splitd[1]));
           }
           
           if(strg.contains("*"))
           {
             splitd = strg.split("[*]",2);
             System.out.println(Integer.parseInt(splitd[0]) * Integer.parseInt(splitd[1]));
           }
           
          if(strg.toUpperCase().equals("KRAJ")) t = 0;
           }
        
           
        }
}
