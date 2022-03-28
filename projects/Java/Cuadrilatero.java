public class Cuadrilatero {
	private float lado1;
	private float lado2;

	public Cuadrilatero(float lado1) {
		this.lado1 = lado1;
	}

	public Cuadrilatero(float lado1, float lado2) {
		this.lado1 = lado1;
		this.lado2 = lado2;
	}

	public void getPerimetro(){
		float perimetro = 0;
		perimetro = (2 * lado1 + (2 * lado2));
		System.out.println("\nPerímetro = " + perimetro + " cm");
	}

	public void getPerimetroIgual(){
		float perimetro = 0;
		perimetro = (4 * lado1);
		System.out.println("\nPerímetro = " + perimetro + " cm");
	}

	public void getArea(){
		float area = 0;
		area = (lado1 * lado2);
		System.out.println("Aréa = " + area + " cm^2");
	}

	public void getAreaIgual(){
		float area = 0;
		area = (lado1 * 4);
		System.out.println("Aréa = " + area + " cm^2");
	}
}
