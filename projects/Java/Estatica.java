import java.util.Scanner;

public class Estatica {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Cuadrilatero cuadrilatero;
		float lado1 = 0, lado2 = 0;
		System.out.print("Ingrese el valor del lador1: ");
		lado1 = sc.nextFloat();
		System.out.print("Ingrese el valor del lador2: ");
		lado2 = sc.nextFloat();

		if (lado1 == lado2)	{
				cuadrilatero = new Cuadrilatero(lado1);
				cuadrilatero.getPerimetroIgual();
				cuadrilatero.getAreaIgual();
		} else {
				cuadrilatero = new Cuadrilatero(lado1, lado2);
				cuadrilatero.getPerimetro();
				cuadrilatero.getArea();
		}
	}
}
