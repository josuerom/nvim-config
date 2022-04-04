package mundo;

import javax.swing.JOptionPane;
import java.util.Scanner;

public class Practica01 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[] ventas = new int[10];
        int  acc = 0, el = 0;

        System.out.println("Ventas que superarón los $2000 pesos.");
        for (int i = 0; i < 10; i++) {
            el = Integer.parseInt(JOptionPane.showInputDialog("Ingrese el valor de venta del día " + (i+1)));
            ventas[i] = el;

            if (ventas[i] > 2000) {
                System.out.println(ventas[i]);
                acc++;
            }
        }
        System.out.println("Solo [" + acc + "] ventas superarón los $2000.");
    }
}