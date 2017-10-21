#!/usr/bin/env python3
# -*- coding: utf-8 -*-

class Person(object):
    __slots__ = ('name', 'age')
    def __init__(self, name, age):
        self.name = name
        self.age = age

p = Person('Louis', '28')
print(p.age)
