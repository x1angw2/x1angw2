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
### dict
> `dict`全称dictionary,在其它语言也称为map，使用键-值(key-value存储，具有极快的查找速度。
```
>>> d = {'xiaoming':98,'xiaozhang':100,'xiaowang':13}
>>> d['xiaowang']
13
```
```
>>> d['jack'] = 123
>>> d['jack']
123
```
> 判断key是否存在，两种方法
>> `in`
```
>>> 'keke' in d
False
```
>> 'get()'如果不存在，返回'None',或者自己指定的value:
```
>>> d.get('keke')
>>> d.get('keke',-7)
-7
```
> 要删除key，同样可以用'pop(key)'的方法，对应的value也会从dict中删除
```
>>> d.pop('jack']
123
```
> _dict的key必须是不可变对象_
> 因为dict根据key来计算value的存储位置，如果每次计算相同的key得出的结果不同，那dict内部就完全混乱了，这个通过key计算位置的算法称为哈希算法(Hash)。要保证hash的正确性，作为key的对象就不能变。在Python中，字符串、整数等都是不可变的，因为，可以放心地作为key。而list是可变的，就不能作为key。
```
>>> key = [1, 2, 3]
>>> d[key] = 'a list'
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: unhashable type: 'list'
```
### set
> `set`和`dict`类似，也是一组key的集合，但不存储value。由于key不能重复，所以，在set中，没有重复的key。
```
# 创建一个set，需要提供一个list作为输入集合
>>> s = set([1,2,3])
>>> s
{1,2,3}
```
```
# 重复元素在set中自动被过滤
>>> s = set([1,1,2,3,2])
>>> s
{1,2,3}
```
> 可以通过`add(key)添加元素到set中，可以重复添加，但是不会有效果。
> 通过`remove(key)来删除元素
```
>>> s.remove(1）
>>> s
{2,3}
```
> `set`可以看成数学意义上的无序和无重复元素的集合，因此，两个set可以做数学意义上的交集、并集
```
>>> s1 = set([1,2,3])
>>> s2 = set([2,3,4])
>>> s1 & s2
{2,3}
>>> s1 | s2
{1,2,3,4}
```


