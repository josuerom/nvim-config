// Programa que halla el producto de los 10 primero números impares.
for (i = 1, acc = 1; i <= 19; i += 2) {
  acc = (acc * i);
}
console.log('Product of ten odd number =', acc);

// Programa que muestra la cantidad de ceros de un arreglo.
const arreglo = [14, 2, 9, 3, 0, 5, 8, 0, 77, 6, 32, 10, 0, 11, 0, 44, 100];
for (i = 0, acc = 0; i < 17; i++) {
  if (arreglo[i] === 0) {
    acc++;
  }
}
console.log('Amount of zeros =', acc);

// Programa que encuentre el número mayor de un arreglo, iterandolo solo una vez
const getBiggets = (arr) => arr.reduce((acc, el) => acc > el ? acc : el);
const arr = [500, 234, -1500, 1000, 876, 8, 33];
const a = getBiggets(arr);
console.log('Big number =', a);

// Programa que aplene los arreglos en un nivel
const flatten = (arr) => arr.reduce((acc, el) => acc.concat(el));
const numbers = [[1, 2], [3, 4], [[], [5]]]; //[1, 2], [3, 4], [[], [5]]
const b = flatten(numbers);
console.log('Arraguement flattened =', b);
