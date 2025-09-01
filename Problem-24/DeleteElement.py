# WAP to delete an element from array specified by user. if element is not found print a 
# message “Element is not found” (do not take a new array). 

n = int(input("Enter n : "))

arr = []

print("Enter elements into arr : ")
for i in range(n) :
    arr.append(int(input(f"arr[{i}] : ")))

element = int(input("Enter an element to delete : "))
index = -1

for i in range(n) :
    if arr[i] == element :
        index = i
        break

if index == -1 :
    print("Element is not found !! ")

else :
    
    for i in range(index, n - 1) :
        arr[i] = arr[i + 1]

    n = n - 1

    for i in arr :
        print(i, end="  ")