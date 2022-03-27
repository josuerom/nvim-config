// Programa que multiplica dos números sin acudir al signo (*)
const multiply = (a, b) => {
	const positive = Math.abs(b) == b;
	let result = 0;

	for (i = 0; i < Math.abs(b); i++) {
		result = positive ? result + a : result - a;
	}
	return result;
}
const a = multiply(50, -50);
console.log(a);

// Obtiene el número mayor de un arreglo con solo iterar una vez
const getBiggets = number => number.reduce((acc, el) => acc > el ? acc : el)
const b = getBiggets([104, 3201, 54, -6542, 64, 7784, 64, 1, 984]);
console.log(b);

// Función que aplana los arreglos en un nivel
const array = [[1, 2, [3, []], [4, [6]]]];//[1, 2, [3, []], 4, [6]]]
const flatten = arr => arr.reduce((acc, el) => acc.concat(el));
const c = flatten(array);
console.log(c);

// Función que imprime solo números mayores a 0 y no imprime las palabras reservadas
const clean = cl => cl.reduce((acc, el) => {
	if (el) {
		acc.push(el);
	}
	return acc;
}, [])
const d = clean([undefined, 0, 1, null, 2, false]);
console.log(d);

// Función que imprime la cantidad de veces que se repite una palabra.
const repeated = (str) => {
	const lowered = str.toLowerCase();
	const splitted = lowered.split(' ');
	const reduced = splitted.reduce((acc, el) => {
		if (acc[el]) {
			acc[el]++;
		} else {
			acc[el] = 1;
		}
		return acc;
	}, {});
	return Object.entries(reduced).reduce((acc, el) => acc[1] > el[1] ? acc : el);
}
const e = repeated('This is a this most better long');
console.log(e);

// Función que verifica si un String es un Palindromo o no
const isPalindrome = (str) => {
	str = str.replace(/\s/g, '');
	const lowered = str.toLowerCase();
	const splitted = lowered.split('');
	const reversed = splitted.reverse();
	const joined = reversed.join('');
	return lowered == joined;
}
const f = isPalindrome('Do geese see God');
console.log(f);
