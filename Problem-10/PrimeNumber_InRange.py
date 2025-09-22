# WAP to find a prime number between range.

import math

def isPrime(n) :
    if n <= 1:
        return False
    
    for i in range(2, int(math.sqrt(n)) + 1) :
        if n % i == 0 :
            return False
        
    return True

s = int(input("Enter start : "))
e = int(input("Enter end : "))

for i in range(s, e + 1) :
    if isPrime(i) :
        print(i, end=" ")