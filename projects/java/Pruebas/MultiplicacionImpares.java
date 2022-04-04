// Este programa halla el producto de los 10 primeros números impares.
public class MultiplicacionImpares {

	public static void main(String[] args) {
		long accMultiplicacion = 1;

		for (int i = 1; i <= 19; i+=2) {//Resultado = 654.729.075
			accMultiplicacion = (accMultiplicacion * i);
		}
		System.out.println("Resultado = " + accMultiplicacion);
	}
}
