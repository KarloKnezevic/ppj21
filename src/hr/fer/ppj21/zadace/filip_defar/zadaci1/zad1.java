package hr.fer.ppj21.zadace.filip_defar.zadaci1;

import java.text.DecimalFormat; 

class zad1
{  
        public static void main(String args[])
        {
           int n = args.length;
           int i;
           double aritSred = 0, geomSred = 1;
           DecimalFormat formatter = new DecimalFormat("0.000"); 
         
           for(i = 0; i < n; i++) 
           {
             aritSred += Double.parseDouble( args[i]);
             geomSred *= Double.parseDouble( args[i]);
           }
           
           aritSred /= n;
           geomSred /= n;
           
           System.out.println("Aritmeticka sredina = " + formatter.format(aritSred));
           System.out.println("Geometrijska sredina = " + formatter.format(geomSred));
        }
}
