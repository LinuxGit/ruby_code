#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os

print([d for d in os.listdir('.')])

language = ['Ruby', 'Python', 'PHP']
print([s.lower() for s in language])
