package mundo;

import java.util.Scanner;

public class SiIngresaUnCeroFinaliza {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int acc = 0, i = 0;

        do {
            System.out.print("Ingrese un número: ");
            i = sc.nextInt();
            acc += i;
        } while (i != 0);
        System.out.println("\nLa suma de todos los números ingresados es = " + acc);
    }
}