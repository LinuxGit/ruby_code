#!/usr/bin/env python3
# -*- coding: utf-8 -*-

l = [ x * x for x in range(10) ]
print(l)

g = (x * x for x in range(10))
for i in g:
    print(i)

def fib(max):
    n = 0
    a, b = 0, 1
    while n < max:
        yield b
        a, b = b, a + b
        n += 1
    return 'done'

for n in fib(6):
    print(n)
