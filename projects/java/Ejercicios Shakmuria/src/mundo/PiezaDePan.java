package mundo;

import java.util.Scanner;

public class PiezaDePan {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int piezasDePan = 0;
        float totalPagar = 0;

        System.out.print("Cuántas piezas de pan desea comprar? ");
        piezasDePan = sc.nextInt();

        if (piezasDePan > 0 && piezasDePan < 49) {
            totalPagar = (float) (piezasDePan * 5);
        }
        if (piezasDePan > 50 && piezasDePan < 100) {
            totalPagar = (float) (piezasDePan * 4.50);
        }
        if (piezasDePan >= 100) {
            totalPagar = (float) (piezasDePan * 4);
        }
        System.out.println("El total a pagar es = " + totalPagar);
    }
}