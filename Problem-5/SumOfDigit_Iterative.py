# WAP to find a summation of a digit of a given number

# Iterative

n = int(input("Enter the number : "))
sum = 0

while n > 0 :
    r = n % 10
    sum = sum + r
    n = n // 10

print(sum)