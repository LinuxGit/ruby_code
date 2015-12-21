months = set(['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'])
x1 = 'Feb'
x2 = 'Sun'

if x1 in months:
    print('x1: ok')
else:
    print('x1: error')

if x2 in months:
    print('x2: ok')
else:
    print('x2: error')

>>> s = set([1, 2, 2, 3])
>>> s
set([1, 2, 3])
>>> s.add(4)
>>> s.remove(1)
>>> s
set([2, 3, 4])
>>> s2 = set([1, 2, 3])
>>> s & s2
set([2, 3])
>>> s | s2
set([1, 2, 3, 4])
