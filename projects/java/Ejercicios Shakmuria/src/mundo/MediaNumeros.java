package mundo;

import java.util.Scanner;

public class MediaNumeros {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int cantidad, numero = 1, acc = 0, el = 0, media;

        while (numero > 0) {// 10>0 acc=30 el=6
            System.out.print("Ingrese un número: ");
            numero = sc.nextInt();
            if (numero > 0) {
                acc += numero;
                el++;
            }
        }
        media = (acc / (el));
        System.out.println("\nLa media de todos los números es = " + media);
    }
}