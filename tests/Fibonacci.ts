const fibo = [0, 1];

for (let i = 2; i <= 19; i++) {
	fibo[i] = (fibo[i-2] + fibo[i-1]);
}
console.log(fibo);
