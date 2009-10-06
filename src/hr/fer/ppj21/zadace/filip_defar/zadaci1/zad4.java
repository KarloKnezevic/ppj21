package hr.fer.ppj21.zadace.filip_defar.zadaci1;

import java.io.BufferedReader; 
import java.io.IOException; 
import java.io.InputStreamReader;

class zad4 {
  public static void main(String args[])
  {
    int niz[],n=0,i=0;
    double med;

    BufferedReader reader = new BufferedReader(new InputStreamReader (System.in) );
    
    System.out.println("N=");
    
    try { n = Integer.parseInt(reader.readLine()); }
    catch (IOException a ) {System.exit(1);}
 
    niz = new int[n];
    
    for(i=0;i<n;i++)
    {
      try {niz[i] = Integer.parseInt(reader.readLine());}
      catch (IOException a ) {System.exit(1);}
    }
    
    System.out.println("Pocetni niz:");
    printme(niz);
    sortme(niz);
    System.out.println("\nSortirani niz:");
    printme(niz);
    med = median(niz);
    System.out.println("\nMedian = " + med);
    
  }
  
  private static void sortme(int array[])
  {
    int i,j,cp,n;
    
    n = array.length;
    
    for(i=0;i<n-1;i++)
      for(j=i;j<n-1;j++)
      if(array[j+1] < array[j])
    {
      cp = array[i];
      array[i] = array[j];
      array[j] = cp;    
    }
  }
  
  private static void printme(int array[])
  {
    int i,n;
    
    n = array.length;
    
    for(i=0; i < n; i++)
    {
      System.out.print(array[i] + ",");
    }
  
  }
  
  private static double median(int array[])
  {
    int i,n;
    double rez=0;
    
    n = array.length;
    
    if(n % 2 == 0)
    {
      rez = array[n / 2];
      rez += array[(n / 2) - 1];
      rez /= 2;
      return rez; 
    }
    else
    {
      rez = array[n / 2];
      return rez;      
    }
    


  }
}