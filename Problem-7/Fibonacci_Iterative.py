# WAP to find a Fibonacci series up to n terms

# Iterative

n = int(input("Enter the number : "))

a, b = 0, 1

for i in range(1, n + 1) :
    print(a, end=" ")

    c = a + b
    a, b = b, c