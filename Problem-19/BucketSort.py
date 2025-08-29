# WAP to sort an Array using Bucket sort.  

def bucketSort(arr) :
    n = len(arr)
    Max = max(arr)

    buckets = [[] for _ in range(n)]

    for i in arr :
        index = (i * n) // (Max + 1)
        buckets[index].append(i)

    for i in buckets :
        i.sort()

    sorted_arr = []
    for i in buckets :
        sorted_arr.extend(i)

    return sorted_arr


n = int(input("Enter n : "))

arr = []

print("Enter elements into arr : ")
for i in range(n) :
    element = int(input(f"arr[{i}] : "))
    arr.append(element)


print("\nUnsorted Array : ", end="\n")
for i in arr :
    print(i, end="  ")


arr = bucketSort(arr)


print("\nSorted Array : ", end="\n")
for i in arr :
    print(i, end="  ")