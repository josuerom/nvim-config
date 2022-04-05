import java.util.Scanner;

public class Estatica {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Cuadrilatero c1;
		Cuadrilatero c2;
		float lado1 = 0, lado2 = 0;
		System.out.print("Ingrese el valor del lador1: ");
		lado1 = sc.nextFloat();
		System.out.print("Ingrese el valor del lador2: ");
		lado2 = sc.nextFloat();

		if (lado1 == lado2)	{
				c1 = new Cuadrilatero(lado1);
				c1.getPerimetroIgual();
				c1.getAreaIgual();
		} else {
				c2 = new Cuadrilatero(lado1, lado2);
				c2.getPerimetro();
				c2.getArea();
		}
	}
}
