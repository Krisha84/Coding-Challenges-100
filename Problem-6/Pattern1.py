# Print a following pattern  
# 1 
# 1 2 
# 1 2 3 
# 1 2 3 4

for i in range(0, 5) :
    for j in range(0, i) :
        print(j+1, end=" ")
    
    print()
