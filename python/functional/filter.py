print(list(filter(lambda x: x % 2 == 1, [1, 4, 6, 7, 9, 12, 17])))
#[1, 7, 9, 17]

def is_not_empty(s):
    return s and s.strip()

print(list(filter(is_not_empty, ['test', None, '', 'str', '  ', 'END'])))

#lambda
print(list(filter(lambda s: s and s.strip(), ['test', None, '', 'str', '  ', 'END'])))
