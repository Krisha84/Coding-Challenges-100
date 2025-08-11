# WAP to find a summation of a digit of a given number

# Recursive

def sumOfDigits(n) :
    if n == 0 :
        return 0
    
    return (n % 10) + sumOfDigits(n // 10)

n = int(input("Enter the number : "))

print(sumOfDigits(n))