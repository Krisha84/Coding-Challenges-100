# *********
# **** ****
# ***   ***
# **     **
# *       *

# for i in range(5, 0, -1) :
#     print("*" * i + " " * (2*(5 - i)) + "*" * i)

for n in range(5, 0, -1) :
    left = "*" * n
    middle_space = " " * (2 * (5 - n))
    right = "*" * n

    print(left + middle_space + right)