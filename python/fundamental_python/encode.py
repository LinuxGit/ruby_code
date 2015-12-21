'刘志'.encode('utf-8')
b'\xe5\x88\x98\xe5\xbf\x97'.decode('utf-8')

>>> len('abc')
3
>>> len('刘志')
2
>>> len(b'abc')
3
>>> len('刘志'.encode('utf-8'))
6

>>> '%02d-%02d' % (9, 1)
'09-01'

>>> '%.2f %%' % 99.99999
'100.00 %'
