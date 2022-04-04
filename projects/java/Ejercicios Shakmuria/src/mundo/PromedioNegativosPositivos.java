package mundo;

import java.util.Scanner;

public class PromedioNegativosPositivos {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[] arreglo = {12, 45, -54, 23, -61, 12, 0, 87, -99, 0};
        float accPos = 0, accNeg = 0, accCeros = 0, elp = 0, eln = 0;

        for (int i = 0; i < 10; i++) {
            if (arreglo[i] > 0) {
                elp += arreglo[i];
                accPos++;
            }
            if (arreglo[i] < 0) {
                eln += arreglo[i];
                accNeg++;
            }
            if (arreglo[i] == 0) {
                accCeros++;
            }
        }
        System.out.println("\nPromedio de los números positivos = " + (elp / accPos)
            + "\nPromedio de los números negativos = " + (eln / accNeg)
            + "\nCantidad de ceros incluidos = " + accCeros);
    }
}