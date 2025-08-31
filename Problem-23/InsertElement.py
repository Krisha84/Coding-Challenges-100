# WAP to enter an element at specific position into array. (Do not take a new array)

n = int(input("Enter n : "))
arr = []

print("Enter elements into arr : ")
for i in range(n) : 
    arr.append(int(input(f"arr[{i}] : ")))

element = int(input("Enter the element : "))
position = int(input("Enter the position : "))

if( position < 1 or position > n + 1) :
    print("Oops...can't insert an element...Plss Enter valid position !!")

else :
    arr.append(0)

    for i in range(n, position - 1, -1) :
        arr[i] = arr[i - 1]

    arr[position - 1] = element
    
print("Array after insertion : ")
for i in arr :
    print(i, end="  ")