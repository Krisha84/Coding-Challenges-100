# WAP to find whether a number is Odd or Even without using a % operator. 

n = int(input("Enter n : "))

if((n // 2) * 2 == n) :
    print(n, " is Even !!")

else :
    print(n, "is Odd !!")