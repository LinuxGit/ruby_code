d = {
    'Adam': 95,
    'Lisa': 85,
    'Bart': 59
}
print('Adam:', d['Adam'])
print('Lisa:', d['Lisa'])
print('Bart:', d.get('Bart'))

>>> scores = {'Louis': 99, 'Ruby': 88}
>>> scores['Louis']
99
>>> 'Louis' in scores
True
>>> scores.get('Louis')
99
>>> scores.get('Liu')
>>> scores.get('Liu', -1)
-1
>>> socres.pop('Louis')
>>> scores.pop('Louis')
99
>>> scores
{'Ruby': 88}
