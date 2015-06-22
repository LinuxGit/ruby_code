import functools

def f(x, y):
    return x + y

print(functools.reduce(f, [1, 3, 5, 7, 9], 100))
print(functools.reduce(f, [x for x in range(0, 9, 2)], 100))
print(sum([x for x in range(0, 9, 2)]) + 100)

#fact
print(functools.reduce(lambda x, y: x * y, range(1, 5)))
