import javax.swing.JOptionPane;
import java.text.DecimalFormat;

public class Factorial {
	
	public static void main (String[] args) {
		// Con esta instancia añado los puntos de miles y coma decimal
		DecimalFormat df = new DecimalFormat("###,###.##");
		double acc = 1;
		int a = Integer.parseInt(JOptionPane.showInputDialog("A cuántos números quieres conocerle su fatorial:"));
		int x = 0;

		while (x < a) {
			acc = 1;
			int el = Integer.parseInt(JOptionPane.showInputDialog("Introduzca el número al que desea conocer su factorial:"));
			for (int i = 1; i <= el; i++) {//soporta hasta el factorial de 170! porque 171! es infinito.
					acc = (double)(acc * i);
			}
			JOptionPane.showMessageDialog(null, "El factorial de " + el + "! es = " + df.format(acc), "Calculo de Factorial (n!)", JOptionPane.INFORMATION_MESSAGE);
			x++;
		}
	}
}
