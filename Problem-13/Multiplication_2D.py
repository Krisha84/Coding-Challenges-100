# WAP to find a Multiplication of 2 Matrix.

r1 = int(input("Enter rows of matrix 1 : "))
c1 = int(input("Enter columns of matrix 1 : "))


r2 = int(input("Enter rows of matrix 2 : "))
c2 = int(input("Enter columns of matrix 2 : "))


if c1 != r2 :
    print("Matrix multiplication not possible !!")
    exit()


print("Enter elements of Matrix 1 : ")
arr1 = []
for i in range(r1) :
    row = []
    for j in range(c1) :
        element = int(input(f"arr1[{i+1}][{j+1}] : "))
        row.append(element)
    arr1.append(row)


print("Enter elements of Matrix 2 : ")
arr2 = []
for i in range(r2):
    row = []
    for j in range(c2) :
        element = int(input(f"arr2[{i+1}][{j+1}] : "))
        row.append(element)
    arr2.append(row)


ans = [[0 for _ in range(c2)] for _ in range(r1)]


for i in range(r1) :
    for j in range(c2) :
        for k in range(c1) :
            ans[i][j] += arr1[i][k] * arr2[k][j]


print("\nMatrix 1 : ")
for i in arr1 :
    print(i)

print("\nMatrix 2 : ")
for i in arr2 :
    print(i)

print("\nMultiplication Result : ")
for i in ans :
    print(i)