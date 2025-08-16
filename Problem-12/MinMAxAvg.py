# WAP to find Max, Min, Average of n numbers, n should be taken from user  
# and all n value should be taken from user 
# (Note that you are not allowed to use an array for this) 

n = int(input("Enter n: "))

if n <= 0 :
    print("Invalid input !!")

else :
    num = int(input("Enter number 1 : "))
    max = min = num
    sum = num

    for i in range(2, n + 1) :
        num = int(input(f"Enter number {i} : "))

        if num > max :
            max = num

        if num < min :
            min = num

        sum = sum + num

print("Min : ", min)
print("Max : ", max)
print("Avg : ", (sum / n))