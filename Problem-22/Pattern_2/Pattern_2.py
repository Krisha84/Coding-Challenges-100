# *********
#  *******
#   *****
#    ***
#     *

# for i in range(5, 0, -1) :
#     print(" " * (5 - i) + "*" * (2*i - 1))

for i in range(5, 0, -1) :
    space = " " * (5 - i)        
    star = "*" * (2 * i - 1)   

    print(space + star)
