#!/usr/bin/env python3
# -*- coding: utf-8 -*-

class Person(object):
    __slots__ = ('_name', '_age')
    def __init__(self, name, age):
        self._name = name
        self._age = age

    @property
    def name(self):
        return self._name
    
    @name.setter
    def name(self, value):
        self._name = value

    def __str__(self):
        return 'Person name: %s, age: %d' % (self._name, self._age)

p = Person('Ruby', 28)
p.name = 'Louis'
print(p.name)
print(p)
