# WAP to find a total odd and total even digit of a given number

n = int(input("Enter n : "))

odd = 0
even = 0

while n > 0 :
    r = n % 10
    
    if r % 2 == 0 :
        even = even + 1
        
    else :
        odd = odd + 1

    n = n // 10

print("Odd digits : ", odd)
print("Even digits : ", even)