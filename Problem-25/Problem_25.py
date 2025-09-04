# WAP to check weather number is present in array or not (using recursion only) and the 
# function’s syntax is given below 
# Int isInArray(int a[],int m);  
# Where int a[] is Array of integer and m is element to be searched.   

n = int(input("Enter n : "))
arr = []

print("Enter elements into array : ", end="\n")
for i in range(n)  :
    arr.append(int(input(f"arr[{i}] : ")))

m = int(input("Enter an element to search : "))

i = 0

def isInArray(arr, m) :
    global i, n
    if i >= n :
        return False
    
    if arr[i] == m :
        return True
    
    i = i + 1

    return isInArray(arr, m)


if isInArray(arr, m) :
    print(m, "is present in array !!")

else :
    print(m, "is not present in array !!")