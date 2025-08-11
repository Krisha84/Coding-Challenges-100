# WAP to find a Factor of a given number 

# Recursive

def fact(n, i=1) :
    if i > n :
        return  
    if n % i == 0 :
        print(i, end=" ")
    fact(n, i + 1)

n = int(input("Enter the number : "))

fact(n)
print()