# Sucesión de fibonacci en solo 7 líneas de código
def fibo(n):
    if n < 2:
        return n
    return fibo(n-1) + fibo(n-2)

for i in range(20):
    print(fibo(i), end=", ")
