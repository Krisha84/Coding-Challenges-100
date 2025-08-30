#        1
#      A   B
#    2   3   4
#  C   D   E   F

n = 1
ch = 'A'

for i in range(1, 5) :
    print("  " * (4 - i), end="")

    for j in range(1, i + 1) :
        if i % 2 != 0 :
            print(f"{n}   ", end="")
            n += 1

        else : 
            print(f"{ch}   ", end="")
            ch = chr(ord(ch) + 1)

    print()