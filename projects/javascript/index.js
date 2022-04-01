const suma = (ns) => {
  let acumulado = 0;
  for (i = 0; i < ns.length; i++) {
    acumulado += ns[i];
  }
  return acumulado;
} 

const numeros = [1, 2, 3, 4, 5];

const multiplicados = numeros.map(x => x * 2)
// a pares
const parejas = numeros.map(x => [x, x])

const mascotas = [
  { nombre: 'Puchini', edad: 12, tipo: 'perro' },
  { nombre: 'Chanchito feliz', edad: 3, tipo: 'perro' },
  { nombre: 'Pulga', edad: 10, tipo: 'perro' },
  { nombre: 'Pelusa', edad: 12, tipo: 'gato' },
]
// edad promedio
const edades = mascotas.map(x => x.edad)
const resultado = suma(edades)
console.log("Result =", resultado / edades.length);
