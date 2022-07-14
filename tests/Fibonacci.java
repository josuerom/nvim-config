import java.util.Arrays;

/**
	* @author Josué Romero
	* @param 13/marzo/2022 - 13:55 COL
*/
public class Fibonacci {
	
	public static void main(String[] args) {
		int fibo[] = new int[20];
		fibo[0] = 0; fibo[1] = 1;

		for (int i = 2; i <= 19; i++) {
			fibo[i] = (fibo[i-2] + fibo[i-1]);
		}
		System.out.println("Fibonacci: " + Arrays.toString(fibo));
	}
}
