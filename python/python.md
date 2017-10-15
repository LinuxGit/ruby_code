- utf-8

`# -*- coding: utf-8 -*-`

- 布尔值
```python
if x:
    print('True')
```
只要 x 是非零数值、非空字符串、非空 list 等，就判断为 True，否则为 False。

- 空值是 Python 里一个特殊的值，用 None 表示。

- 类型转换

`int(12.1)`

- Unicode 转换
```
>>> ord('A')
65
>>> chr(65)
'A'
```

- str 与 bytes 转换
```
>>> 'Ruby'.encode('utf-8')
b'Ruby'
>>> b'Ruby'.decode('utf-8')
'Ruby'
>>> '中文'.encode('utf-8')
b'\xe4\xb8\xad\xe6\x96\x87'
>>> b'\xe4\xb8\xad\xe6\x96\x87'.decode('utf-8')
'中文'
>>> len('Ruby')
4
>>> len('中文')
2
>>> len(b'\xe4\xb8\xad\xe6\x96\x87')
6
```

- 地板除
```
>>> 10 // 3
3
```

- 排序
```python
sorted([18, 6, 9, 27])
sorted([18, 6, 9, 27], reverse = True)
```

- 系统环境变量
```python
>>> import os
>>> os.environ.get("LANG")
'zh_CN.UTF-8'
>>> os.environ.keys()
```

- 定义 function 时默认参数必须指向不变对象。


