import java.util.Scanner;

public class Factorial {

	public Factorial() {
		Scanner sc = new Scanner(System.in);
		int factNumero = 1, numeroFact;

		System.out.print("Please, enter a number nature: ");
		numeroFact = sc.nextInt();

		for (int i = 1; i <= numeroFact; i++) {
			factNumero = factNumero * i;
		}
		System.out.println("The factorial of " + numeroFact + "! is = " + factNumero);
	}

	public static void main(String[] args) {
		Factorial instance = new Factorial();
	}
}
