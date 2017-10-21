def build(x, y):
    return lambda: x * x + y * y

print(build(2, 3)())

print(list(map(lambda x: x * x, list(range(1, 10)))))