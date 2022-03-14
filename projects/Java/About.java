import java.util.Scanner;
import java.util.Arrays;

public class About {

	public About() {
		Scanner sc = new Scanner(System.in);
		int[] arr = {6, 2, 7, 10, 4, 8, 3, 5, 9, 1};
		String[] strArr = {"Josue", "Josias", "Jose"};
		
		System.out.println("\nOriginal arrangement: " + Arrays.toString(arr));
		Arrays.sort(arr);
		System.out.println("Neat arrangement: " + Arrays.toString(arr));
		System.out.println("String arrangement: " + Arrays.deepToString(strArr));
	}

	public static void main(String[] args) {
		About instance = new About();
	}
}
