package mundo;

import java.util.Scanner;

public class MultiplicaionNumImpares {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        long mult = 1;

        for (long i = 0, j = 1; i < 10; i++, j+=2) {//i=9 m=15*19 mult=654.729.075
            mult = (mult * j);
        }
        System.out.println("El resultado de multiplicar los 10 primero números impares es = " + mult);
    }
}