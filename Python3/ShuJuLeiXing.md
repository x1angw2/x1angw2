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
### 条件判断
```
if
elif
else

if <条件判断1>:
	<执行1>
elif<条件判断2>:
	<执行2>
elif<条件判断3>:
	<执行3>
else:
	<执行4>
```
### 循环
> 一种是`for...in`循环；一种是`while`循环。
```
names = ['zhang','li','wang']
for name in names:
	print(name)

Michael
Bob
Tracy
```

```
sum = 0
for x in [1,2,3,4,5,6,7,8,9,10]:
	sum = sum + x
print(sum)
# 输出55
55
```
> `range()` 生成整数序列
> `list()` 转化成整数序列
```
>>> list(range(5))
[0,1,2,3,4,5]
```
```
# _*_ coding:utf-8 _*_

sum = 0

for x in range(101):
	sum = sum + x
print(sum)
```
> `while`循环，只要条件满足，就会不断循环，条件不满足是自动退出。
```
# 计算100以内所有奇数的和。
sum = 0
n = 99
while n > 0:
	sum = sum + n
	n = n - 2
print(sum)
```
> `break`提前退出循环
# 循环打印1-100的数字
```
n = 1
while n <= 100:
	print(n)
	n = n + 1
print('END')
```
# 如果要提前结束
```
n = 1
while n <= 100:
	if n > 10: # 当n = 11时，条件满足，执行break语句
		break # break语句会结束当前循环
	print(n)
	n = n + 1
print('END')
```
> `continue` 在循环过程中，跳过当前的这次循环，直接开始下一次循环
```
# 打印1-10。
n = 0
while n < 10:
	n = n + 1
	print(n)
```

