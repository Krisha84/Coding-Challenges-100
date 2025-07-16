# WAP to find a sum of even number into 1D array.

n = int(input("Enter the size of array: "))
arr = []

print("Enter elements into array : ")
for i in range(n) :
    element = int(input(f"arr[{i}] : "))
    arr.append(element)

sum = 0
for i in arr :
    if i % 2 == 0 :
        sum += i

print("The sum of even numbers : ", sum)