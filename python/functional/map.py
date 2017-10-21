#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from functools import reduce

# [n * n for n in list(range(1, 10))]
def f(x):
    return x * x

print(list(map(f, list(range(1, 10)))))

list(map(str, list(range(1, 10))))
# ruby > (1..9).to_a.map(&:to_s)

def fn(x, y):
    return 10 * x + y

print(reduce(fn, [1, 3, 5, 7, 9]))

def format_name(s):
    return s[0].upper() + s[1:].lower()

print(list(map(format_name, ['adam', 'LISA', 'barT'])))
print(list(map(lambda s: s[0].upper() + s[1:].lower(), ['adam', 'LISA', 'barT'])))
