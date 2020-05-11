### 浮点数
> 小数*按照科学计数法表示时，一个浮点数的小数点位置是可变的*,比如1.23*10^9等于12.3*10^8。一般用e代替10，1.23*10^9写做1.23e9或者12.3e8，0.000012写作1.2e-5。
### 字符串
> 用""或者''括起来。
> \\转义符。为了简化，`可以用r''`
```
>>> print('\\\t\\')
\     \
>>> print(r'\\\t\\')
\\\t\\
```
```
Python允许'''neirong'''表示多行内容
>>> print('''china
china
china''')
china
china
china
```
### 布尔值
> `True``False`
> and、or、not运算
```
True and True == True
True and False == False
False and False == False
```
```
Ture or True == Ture
Ture or False == Ture
False or False == False
```
```
not True == False
not False == True
```
### 空值
> `none`
### 变量
`a = 1`
`b = 'china'`
`c = True`
### 编码
> ord('a') 文字转化成编码
> chr('66') 编码转化成文字
```
>>> '\u4e2d\u6587'
'中文'
# 十六进制
```

