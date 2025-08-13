# WAP to find whether a number is Odd or Even without using a % operator. 

# Using bitwise AND

n = int(input("Enter n : "))

if(n & 1 == 0) :
    print(n, " is Even !!")

else :
    print(n, "is Odd !!")