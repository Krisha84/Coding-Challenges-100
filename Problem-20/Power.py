# WAP to find a power a^b (without using power and multiplication operation). 

a = int(input("Enter base a : "))
b = int(input("Enter exponent b : "))

ans = 1
for i in range(b) :
    temp = 0

    for j in range(a) :  
        temp = temp + ans
    ans = temp

print(a, "^", b, "=", ans)