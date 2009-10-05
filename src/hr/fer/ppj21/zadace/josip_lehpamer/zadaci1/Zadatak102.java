package hr.fer.ppj21.zadace.josip_lehpamer.zadaci1;

public class Zadatak102 {
	
	public static void main(String[]args) {
		int broj = Integer.parseInt(args[0]);
		System.out.println(fibo(broj));				
	}
	
	private static int fibo (int n) {
		if(n==0||n==1) return (1);
		else return (fibo(n-1) + fibo(n-2));
	}
}
