# WAP to find a Fibonacci series up to n terms

# Recursive
n = int(input("Enter n : "))

def fibonacci(n) :
    if n <= 1 :
        return n
    
    return fibonacci(n - 1) + fibonacci(n - 2)


for i in range(0, n) :
    print(fibonacci(i), end=" ")