import math

def add(x, y, f):
    return f(x) + f(y)

print(add(-5, 3, abs))
print(add(25, 9, math.sqrt))
