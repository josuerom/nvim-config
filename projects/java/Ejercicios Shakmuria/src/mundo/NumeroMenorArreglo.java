package mundo;

import java.util.Scanner;

public class NumeroMenorArreglo {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[] arreglo = new int[5];
        int el = 0;

        for (int i = 0; i < 5; i++) {
            System.out.print("Ingrese un número: ");
            arreglo[i] = sc.nextInt();

            if (i > 0) {
                if (arreglo[i] < arreglo[i-1]) {
                    el = arreglo[i];
                }
            }
        }
        System.out.println("\nEl número menor del arreglo es = " + el);
    }
}