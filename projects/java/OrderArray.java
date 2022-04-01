import java.util.Arrays;

public class OrderArray {

	public static void main(String[] args) {
		int[] array = {8, 3, 4, 1, 10, 5, 9, 7, 6, 2};
		int numActual = 0;
		System.out.println("Arreglo Original: " + Arrays.toString(array));

		// Método burbuja
		for (int i = 0; i < array.length; i++) {
			for (int j = 0; j < array.length-1; j++) {
				if (array[j] > array[j+1]) {
					numActual = array[j];
					array[j] = array[j+1];
					array[j+1] = numActual;
				}
			}
		}
		System.out.println("Arreglo Ordenado: " + Arrays.toString(array));
	}
}
