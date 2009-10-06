package hr.fer.ppj21.zadace.filip_defar.zadaci1;

class zad2
{
  public static void main(String args[])
  {
    
    System.out.println(fibon(Integer.parseInt(args[0]),0,1));
    
  }
  
  private static int fibon(Integer n, Integer a, Integer b)
  {
    if(n == 0) return 0;
    if(n == 1) return 1;
    

    
    return a + fibon(n-1,b,a+b);
    
  }
}