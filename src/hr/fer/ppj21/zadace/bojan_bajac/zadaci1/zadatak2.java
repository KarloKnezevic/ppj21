package hr.fer.ppj21.zadace.bojan_bajac.zadaci1;

public class zadatak2 {
	
		private static int fib(int br) {
			
			if (br <= 1) {
				return br;
				}
			else {
				return ( fib(br- 1) + fib(br- 2) );
		}
		
	}
		
		public static void main(String[] args) {
			int rez = Integer.parseInt(args[0]);
			System.out.print(rez + fib(rez));
		}

}
