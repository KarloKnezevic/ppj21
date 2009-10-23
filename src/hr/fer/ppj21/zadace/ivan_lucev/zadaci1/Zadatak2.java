package hr.fer.ppj21.zadace.ivan_lucev.zadaci1;

public class Zadatak2 {

	public static void main(String[] args) {
		if(args.length != 1) {
			System.out.println("Program mora imati jedan argument!");
			System.exit(1);
			}
		
		int broj = Integer.parseInt(args[0]);
				
		
		for (int i = 1; i <= broj; i++){
			System.out.println(i + ":  " + fib(i));
		}
			

	}
	
	public static int fib(int n) {
        if (n <= 1) return n;
        else return fib(n-1) + fib(n-2);
    }

}