from functools import reduce

def f(x, y):
    return x + y

print(reduce(f, [1, 3, 5, 7, 9], 100))
print(reduce(f, [x for x in range(0, 9, 2)], 100))
print(sum([x for x in range(0, 9, 2)]) + 100)

#fact
print(reduce(lambda x, y: x * y, range(1, 5)))
