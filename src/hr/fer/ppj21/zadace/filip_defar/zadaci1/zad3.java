package hr.fer.ppj21.zadace.filip_defar.zadaci1;

import java.io.BufferedReader; 
import java.io.IOException; 
import java.io.InputStreamReader;

class zad3
{
  public static void main(String args[])
  {
    int niz[],i,x=0,n=0,min;

    /* kreiramo reader */
    BufferedReader reader = new BufferedReader(new InputStreamReader (System.in) );
    
    /* ucitamo int */
    try
    {
      n = Integer.parseInt(reader.readLine()); 
    }
    catch (IOException a )
    {
      System.exit(1);
    } 
    
    niz = new int[n]; 
    
    for(i=0;i<n;i++) 
    {
      System.out.println("Num("+i+")=");
      try
      {
        x = Integer.parseInt(reader.readLine()); 
        niz[i] = x;
      }
      catch (IOException a)
      {
        System.exit(1);
      }    
    }  
    
    min = niz[0];
    
    for(i=1;i<n;i++)
    {
      if(niz[i] < min) min = niz[i];
    }
    
    System.out.println("Min="+min);
  }

}