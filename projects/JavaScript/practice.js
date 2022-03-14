const multiply = (a, b) => {
	let result = 0;
	const positive = Math.abs(b) == b;

	for (i = 0; i < Math.abs(b); i++) {
		result = positive ? result + a : result - a;
	}
	return result;
}
const a = multiply(50, -50);
console.log(a);

const getBiggets = number => number.reduce((acc, el) => acc > el ? acc : el)
const b = getBiggets([104, 3201, 54, -6542, 64, 7784, 64, 1, 984]);
console.log(b);

const array = [[1, 2, [3, []], [4, [6]]]];//[1, 2, [3, []], 4, [6]]]
const flatten = arr => arr.reduce((acc, el) => acc.concat(el));
const c = flatten(array);
console.log(c);

const clean = cl => cl.reduce((acc, el) => {
	if (el) {
		acc.push(el);
	}
	return acc;
}, [])
const d = clean([undefined, 0, 1, null, 2, false]);
console.log(d);

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
