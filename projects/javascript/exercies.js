// Programa que halla el producto de los 10 primero números impares.
for (i = 1, acc = 1; i <= 19; i += 2) {
  acc = (acc * i);
}
console.log('Resultado =', acc);

// Programa que muestra la cantidad de ceros de un arreglo.
const arreglo = [14, 2, 9, 3, 0, 5, 8, 0, 77, 6, 32, 10, 0, 11, 0, 44, 100];
for (i = 0, acc = 0; i < 17; i++) {
  if (arreglo[i] === 0) {
    acc++;
  }
}
console.log('Cantidad de ceros =', acc);


