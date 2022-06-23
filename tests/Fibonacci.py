def fibo(n):
    if n < 2:
      return n
    return fibo(n-1) + fibo(n-2)

print("[", end="")
for i in range(20):
    if i < 19:
      print(fibo(i), end=", ")
    else:
      print(fibo(i), end="]")
