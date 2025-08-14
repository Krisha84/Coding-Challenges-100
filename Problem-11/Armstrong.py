# WAP to find weather given number is Armstrong number is not. 

n = int(input("Enter n : "))

digit = len(str(n))

result = sum(int(i) ** digit for i in str(n))

if result == n :
    print(n, " is an Armstrong number !")
else :
    print(n, " is not an Armstrong number !")