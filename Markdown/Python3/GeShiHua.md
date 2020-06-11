# 基础
### 格式化
```
>>> 'Hello, %s' % 'world'
'Hello, world'
>>> "Hi, %s, you have $%d.' % ('Michael',1000000)
'Hi, Michael, you have $1000000.'
```
> `%`运算符用来格式化字符串。
>> `%s`字符串
>> `%d`整数
>> `%?`有几个占位符，就有几个变量，顺序需要一一对应

占位符|替换内容
:-:|:-:
%d|整数|
%f|浮点数|
%s|字符串|
%x|十六进制整数|

> %% 用%转义
### list
> 内置的一种数据类型列表:list。list是一种`有序`的集合，可以随时添加、修改和删除
```
>>> classmates = ['小明','小李'，'小彰']
>>> classmates
['小明','小李','小彭']
```
>可以用索引来访问list中每一个位置的元素，从`0`开始，[-1]表示最后一个，[-2]表示倒数第二，以此类推。
```
classmates[0]
'小明'
```
> 操作元素
 - .append 末尾追加元素
 - .insert 插入到指定位置
 - .pop 删除指定位置的元素，默认末尾。
 - 不接直接替换
```
>>> classmates = ['1','2','3']

>>> classmates.append('adam')
['1','2','3','adam']

>>> classmates.insert(1,'xiang')
['1','xiang','2','3','adam']

>>> classmates.pop()
['1','xiang','2','3']

>>> classmates.pop(1)
['1','2','3']

>>> classmates[1] = 'china'
['1','china','3']
```
> list元素也可以是另一个list
```
>>> s = ['1','2',['one','two'],'there']
>>> len(s)
4
```
### tuple
> 和list一样，无法修改元素，只能读，不能写。注意`()`和`[]`的区别。
```
classmates = ('1','2','3')
```
> 注意()和数学计算()的区别。
```
china = (1)
# 给China赋值1。
china = (1,)
# 给china一个元素1。
```
### len
> 获取元素的个数。
```
len(classmates)
3
```
### 条件判断

