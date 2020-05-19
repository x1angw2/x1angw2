# 函数
我们知道圆的面积计算公式为：`S = πr^2`
当我们知道`r`的值时，我们就可以根据公式计算出面积。假设我们需要计算出3个不同大小的圆的面积：
```
r1 = 12.34
r2 = 10
r3 = 12.3
s1 = 3.14 * r1 * r1
s2 = 3.14 * r2 * r2
s3 = 3.14 * r3 * r3
```
当代码出现规律、重复的时候，就需要注意了，每次写`3.14 * x * x`不仅很麻烦，而且，如果要把`3.14`修改为`3.14159`的时候，需要全部修改，很麻烦。
有了*函数*,就不需要写`s = 3.14 * r * r`，而是写出更有意义的函数调用`s = area_of_circle(x)`，而函数`area_of_cirle`本身只需要写一次，就可以多次调用。
### 抽象
计算数列的和，比如`1 + 2 + 3 + .... + 100`，写起来不方便，于是数学家发明了符号`∑`，可以记作：
```
$$\Sum_{n=1}^1{00}n$$
# githu不支持LaTeX
```
![sum](/image/code_math_1.gif)

这种抽象记法非常强大，因为我们看到`∑`就可以理解成求和，而不是还原成低级的加法运算。
而且，这种抽象记法是可扩展的，比如：

![\sum^{100}{n=1}(n^2+1)](/image/code_math_2.gif)

还原成加法运算就是

`(1 * 1 + 1) + (2 * 2 + 1) + (3 * 3 + 1) + ... + (100 * 100 + 1)`

可见，借助抽象，我们才能不关心底层的具体计算过程，而直接在更高的层次上思考问题。
写计算机程序也是一样，函数就是最基本的一种代码抽象的方式。

## 调用函数

要调用函数，需要知道函数的名称和参数，比如求绝对值的函数`abs`，只有一个参数。可以直接从Python的官方网站查看文档[Here](http://docs.python.org/3/library/functions.html#abs)
也可以在交互式命令行通过`help(abs)`查看`abs`函数的帮助信息。
调用`abs`函数：
```
>>> abs(100)
100
>>> abs(3.14)
3.14
>>> abs(-99)
99
```
而`max`函数`max()`可以接受任意多个参数，并返回最大的那个：
```
>>> max(1,2)
2
>>> max(2,3,1,-5)
3
```
#### 数据类型转换
Python内置的常用函数还包括数据类型转换函数，比如`int()`函数可以把其它数据类型转换为整数：
```
>>> int('123')
123
>>> int(12.34)
12


>>> float('12.34')
12.34


>>> str(1.23)
'1.23'
>>> str(100)
'100'

>>> bool(1)
True
>>> bool('')
False
```
函数名其实就是指向一个函数对象的引用，完全可以把函数名赋给一个变量，相当于给这个函数起了一个“别名”：
```
>>> a = abs	# 变量a指向abs函数
>>> a(-1)	# 所以也可以通过a调用abs函数
1
```
## 定义函数
在Python中，定义一个函数要使用`def`语句，依次写出函数名、括号、括号中的参数和冒号`:`，然后，在缩进块中编写函数体，函数的返回值用`return`语句返回。
> 我们以自定义一个求绝对值的`my_abs`函数为例：
```
# _*_ coding:utf-8 _*_

def my_abs(x):
	if x >= 0:
		return x
	else:
		return -x
```
请注意，函数体内部的语句在执行时，一旦执行到`return`时，函数就执行完毕，并将结果返回。因此，函数内部通过条件判断和循环可以实现非常复杂的逻辑。
如果没有`return`语句，函数执行完毕后 也会返回结果，只是结果为`None`。`return None`可以简写为`return`。
#### 空函数
如果想定义一个什么事也不做的空函数，可以用`pass`语句：
```
def nop():
	pass
```
`pass`语句什么都不做，那有什么用？实际上`pass`可以用来作为占位符，比如现在还没想好怎么写函数的代码，就可以先放一个`pass`，让代码能运行起来。
`pass`还可以用在其它语句里，比如：
```
if age >= 18:
	pass
```
#### 返回多个值
比如在游戏中经常需要从一个点移动到另一个点，给出坐标、位移和角度，就可以计算出新的坐标：
```
import math

def move(x,y,step,angle=0):
	nx = x + step * math.cos(angle)
	ny = y - step * math.cos(angle)
	return nx,ny
```
`import math`语句表示导入`math`包，并允许后续代码引用`math`包里的`sin`、`cos`等函数。
然后，我们就可以同时获得返回值：
```
>>> x,y =move(100,100,60,math.pi / 6)
>>> print(x,y)
151.96152422706632	70.0
```
但其实这只是一种假象，Python函数返回的仍然是单一值：
```
>>> r = move(100,100,60,math.pi / 6)
>>> print(r)
(151.96152422706632,	70.0)
```
原来返回值是一个tuple！但是，在语法上，返回一个tuple可以省略括号，而多个变量可以同时接收一个tuple，按位置 赋给对应的值，所以，Python的函数返回多值其实就是返回一个tuple，但写起来方便。

## 函数的参数
Python的函数定义非常简单，但灵活度却非常大。除了正常定义的必选参数外，还可以使用默认参数、可变参数和关键字参数，使得函数定义出来的接口，不但能处理复杂的参数，还可以简化调用者的代码。
#### 位置参数
我们先写一个计算`x^2`的函数：
对于`power(x)`函数，参数`(x)`就是一个位置参数。
当我们调用`power`函数时，必须传入有且仅有的一个参数`x`:
```
>>> power(5)
25
>>> power(15)
225
```
现在，如果我们要计算`x^3`怎么办？可以再定义一个`power3`函数，但是如果要计算`x^4`、`x^5`....怎么办？我们不可能定义无限多个函数。
可以把`power(x)`修改为`power(x,n),用来计算`x^n`，说干就干：
```
def power(x,n):
	s = 1
	while n > 0:
		n = n -1
		s = s * x
	return s
```
对于这个修改后的`power(x,n)`函数，可以计算任意n次方：
```
>>> power(5,2)
25
>>> power(5,3)
125
```
修改后的`power(x,n)`函数有两个参数：`x`和`n`，这两个参数都是位置参数，调用函数时，传入的两个值按照 位置顺序一次赋给参数`x`和`n`。
#### 默认参数
此是，必须输入两个参数，只输入一个会报错:
```
>>> power(5)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: power() missing 1 required positional argument: 'n'
```
Python的错误信息很明确：调用函数`power()`缺少一个位置参数`n`
_这个时候，默认参数就派上用场了。由于我们经常计算`x^2`，所以，完全可以把第二个参数n的默认值设定为2:
```
def power(x,n=2):
	s = 1
	while n > 0:
		n = n - 1
		s = s * x
	return s
```
这样，当我们调用`power(5)`时，相当于调用`power(5,2):
```
>>> power(5)
25
>>> power(5,2)
25
```
默认参数可以简化函数的调用。设置默认参数时，有几点要注意：
> - 比选参数在前，默认参数在后，否则Python的解释器会报错；
> - 如何设置默认参数。
>> 当函数有多个参数时，把变化大的参数放前面，变化小的参数放后面。变化小的参数就可以作为默认参数。
举个例子，我们写个一年级小学生注册的函数时，需要传入`name`和`gender`两个参数：
```
def enroll(name,gender):
	print('name:',name)
	print('gender:',gender)
```
这样，调用`enroll()`函数只需要传入两个参数：
```
>>> enroll('Sarah','F')
name:Sarah
gender:F
```
如果要继续传入年龄、城市等信息怎么办？这样会使得调用函数的复杂度大大增加。
我们可以把年龄和城市设为默认参数：
```
def enroll(name,gender,age=6,city='Chongqing'):
	print('name:',name)
	print('gender:',gender)
	print('age:',age)
	print('city:'city)
```
这样，大多数学生注册时不需要提供年龄和城市，只提供必须的两个参数：
```
>>> enroll('Sarah','F')
name:Sarah
gender:F
age:6
city:Chongqing
```
只有默认参数不符的学生才需要提供额外的信息：
```
enroll('Bob','M',7)
name:Bob
gender:M
age:7
city:Chongqing

enroll('wezhon','M',27,'city='Youyang')
name:wezhon
gender:M
age:27
city:Youyang
```
默认参数很有用，传入一个list，添加一个`END`再返回：
```
def add_end(L=[]):
	L.append('END')
	return L
```
当你正常调用时，结果似乎不错：
```
>>> add_end([1,2,3])
[1,2,3,'END']
>>> add_end(['x','y','z'])
['x','y','z','END']
```
当你使用默认参数调用时，一开始结果也是对的：
```
>>> add_end()
['END']
```
但是，再次调用`add_end()`时，结果就不对了：
```
>>> add_end()
['END','END']
>>> add_end()
['END','END','END']
```
很多初学者很遗憾，默认参数是[],但是函数似乎每次都“记住了”上次添加了'END'后的list。
原因解释如下：
Python函数再定义的时候，默认参数`L`的值被计算出来了，即`[]`，因为默认参数`L`也是一个变量，它指向对象`[]`,每次调用该函数，如果改变来了`L`的内容，则下次调用时，默认参数的内容就变了，不再是函数定义的`[]`了。
*定义默认参数要牢记一点：默认参数必须指向不变对象！*
要修改上面的例子，我们可以用`None`这个不变对象来实现：
```
def add_end(L=None):
	if L is None:
		L = []
	L.append('END')
	return L
```
现在，无论调用多少次，都不会有问题：
```
>>> add_end()
[`END']
>>> add_end()
[`END']
```
为什么要设计`str`、`None`这样的不变对象呢？因为不变对象一旦创建，对象内部的数据就不能修改，这样就减少了由于修改数据导致的错误。此外，由于对象不变，多任务环境下同时读取对象不需要加锁，同时读一点问题都没有。我们在编写程序时，如果可以设计一个不变对象，那就尽量设计成不变对象。
#### 可变参数
在Python函数中，还可以定义可变参数。顾名思义，可变参数就是传入的参数个数是可变的，可以是1个、2个到任意个，还可以是0个。
我们以数学题为例子，给定一组数字a,b,c....，请计算a^2 + b^2 + c^2 +...。
要定义出这个函数，我们必须确定输入的参数。由于参数个数不确定，我们首先想到可以把a,b,c...作为list或tuple传进来，这样，函数可以定义如下：
```
def calc(numbers):
	sum = 0
	for n in numbers:
		sum = sum + n * n
	return sum
```
但是调用的时候，需要先组装出一个list或tuple：
```
>>> calc([1,2,3])
14
>>> calc((1,3,5,7))
84
```
如果利用可变参数，调用函数的方式可以简化成这样：
```
>>> calc(1,2,3)
14
>>> calc(1,3,5,7)
```
所以，我们把函数的参数改为可变参数：
```
def calc(*numbers):
	sum = 0
	for n in numbers:
		sum = sum + n * n
	return sum
```
定义可变参数和定义一个list或tuple参数相比，仅仅在参数前面加了一个`*`号。在函数内部，参数`numbers`接收到的是一个tuple，因此，函数代码完全不变。但是，调用该函数时，可以传入任意个参数，包括0个参数：
```
>>> calc(1,2)
5
>>> calc()
0
```
如果已经有一个list或者tuple，要调用一个可变参数怎么办？可以这样做：
```
>>> nums = [1,2,3]
>>> calc(nums[0],nums[1],nums[2])
14
```
这种写法当然是可行的，问题是太繁琐，所以Python允许你在list或tuple前面加一个`*`号，把list或tuple的元素变成可变参数传进去：
```
>>> nums = [1,2,3]
>>> calc(*nums)
14
```
`*nums`表示把`nums`这个list的所以元素作为可变参数传进去。这种写法相当有用，而且很常见。
#### 关键字参数
可变参数允许你传入0个或任意个参数，这些可变参数在函数调用时自动组装为一个tuple。而关键字参数允许你传入0个或任意个含参数名的参数，这些关键字参数在函数内部自动组装为一个dict。请看示例：
```
def person(name,age,**kw):
	print('name:',name,'age:',age,'other:',kw)
```
函数`person`除了必选参数`name`和`age`外，还接受关键字参数`kw`。在调用该函数时，可以只传入必选参数：
```
>>> person('Michael',30)
name:Michael age:30 other:{}
```
也可以传入任意个数字的关键字参数：
```
>>> person('Bob', 35, city='Beijing')
name: Bob age: 35 other: {'city': 'Beijing'}
>>> person('Adam', 45, gender='M', job='Engineer')
name: Adam age: 45 other: {'gender': 'M', 'job': 'Engineer'}
```
关键字参数有什么用？它可以扩展函数的功能。比如，在`person`函数里，我们保证能接收到`name`和`age`这两个参数，但是，如果调用者愿意提供更多的参数，我们也能收到。试想你正在做一个用户注册的功能，除了用户名和年龄是必填项外，其他都是可选项，利用关键字参数来定义这个函数就能满足注册的需求。

和可变参数类似，也可以先组装出一个dict，然后，把该dict转换为关键字参数传进去：
```
>>> extra = {'city': 'Beijing', 'job': 'Engineer'}
>>> person('Jack', 24, city=extra['city'], job=extra['job'])
name: Jack age: 24 other: {'city': 'Beijing', 'job': 'Engineer'}
```
当然，上面复杂的调用可以用简化的写法：
```
>>> extra = {'city': 'Beijing', 'job': 'Engineer'}
>>> person('Jack', 24, **extra)
name: Jack age: 24 other: {'city': 'Beijing', 'job': 'Engineer'}
```
`**extra`表示把`extra`这个dict的所有key-value用关键字参数传入到函数的`**kw`参数，`kw`将获得一个dict，注意`kw`获得的dict是`extra`的一份拷贝，对`kw`的改动不会影响到函数外的`extra`。
#### 命名关键字参数
对于关键字参数，函数的调用者可以传入任意不受限制的关键字参数。至于到底传入了哪些，就需要在函数内部通过`kw`检查。

仍以`person()`函数为例，我们希望检查是否有`city`和`job`参数：
```
def person(name, age, **kw):
    if 'city' in kw:
        # 有city参数
        pass
    if 'job' in kw:
        # 有job参数
        pass
    print('name:', name, 'age:', age, 'other:', kw)
```
但是调用者仍可以传入不受限制的关键字参数：
```
>>> person('Jack', 24, city='Beijing', addr='Chaoyang', zipcode=123456)
```
如果要限制关键字参数的名字，就可以用命名关键字参数，例如，只接收`city`和`job`作为关键字参数。这种方式定义的函数如下：
```
def person(name, age, *, city, job):
    print(name, age, city, job)
```
和关键字`**kw`不同，命名关键字参数需要一个特殊分隔符`*`,`*`后面的参数被视为命名关键字参数。
调用方式如下：
```
>>> person('Jack', 24, city='Beijing', job='Engineer')
Jack 24 Beijing Engineer
```
如果函数定义中已经有了一个可变参数，后面跟着的命名关键字参数就不再需要一个特殊分隔符`*`了：
```
def person(name, age, *args, city, job):
    print(name, age, args, city, job)
```
命名关键字参数必须传入参数名，这和位置参数不同。如果没有传入参数名，调用将报错：
```
>>> person('Jack', 24, 'Beijing', 'Engineer')
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: person() takes 2 positional arguments but 4 were given
```
由于调用时缺少参数名`city`和`job`，Python解释器把这4个参数均视为位置参数，但`person()`函数仅接受2个位置参数。
命名关键字参数可以有缺省值，从而简化调用：
```
def person(name, age, *, city='Beijing', job):
    print(name, age, city, job)
```
由于命名关键字参数`city`具有默认值，调用时，可不传入`city`参数：
```
>>> person('Jack', 24, job='Engineer')
Jack 24 Beijing Engineer
```
使用命名关键字参数时，要特别注意，如果没有可变参数，就必须加一个`*`作为特殊分隔符。如果缺少`*`，Python解释器将无法识别位置参数和命名关键字参数：
```
def person(name, age, city, job):
    # 缺少 *，city和job被视为位置参数
    pass
```
#### 参数组合
在Python中定义函数，可以用必选参数、默认参数、可变参数、关键字参数和命名关键字参数，这5种参数都可以组合使用。但是请注意，参数定义的顺序必须是：必选参数、默认参数、可变参数、命名关键字参数和关键字参数。

比如定义一个函数，包含上述若干种参数：
```
def f1(a, b, c=0, *args, **kw):
    print('a =', a, 'b =', b, 'c =', c, 'args =', args, 'kw =', kw)

def f2(a, b, c=0, *, d, **kw):
    print('a =', a, 'b =', b, 'c =', c, 'd =', d, 'kw =', kw)
```
在函数调用的时候，Python解释器自动按照参数位置和参数名把对应的参数传进去。
```
>>> f1(1, 2)
a = 1 b = 2 c = 0 args = () kw = {}
>>> f1(1, 2, c=3)
a = 1 b = 2 c = 3 args = () kw = {}
>>> f1(1, 2, 3, 'a', 'b')
a = 1 b = 2 c = 3 args = ('a', 'b') kw = {}
>>> f1(1, 2, 3, 'a', 'b', x=99)
a = 1 b = 2 c = 3 args = ('a', 'b') kw = {'x': 99}
>>> f2(1, 2, d=99, ext=None)
a = 1 b = 2 c = 0 d = 99 kw = {'ext': None}
```
最神奇的是通过一个tuple和dict，你也可以调用上述函数：
```
>>> args = (1, 2, 3, 4)
>>> kw = {'d': 99, 'x': '#'}
>>> f1(*args, **kw)
a = 1 b = 2 c = 3 args = (4,) kw = {'d': 99, 'x': '#'}
>>> args = (1, 2, 3)
>>> kw = {'d': 88, 'x': '#'}
>>> f2(*args, **kw)
a = 1 b = 2 c = 3 d = 88 kw = {'x': '#'}
```
所以，对于任意函数，都可以通过类似`func(*args,**kw)的形式调用它，无论它的参数是如何定义的。
*虽然可以组合多达5种参数，但不要同时使用太多的组合，否则函数接口的可理解性很差。*


#### 小练习
请定一个函数`quadratic(a,b,c)`,接收3个参数，返回一元二次方程`ax^2 + bx + c =0`的两个解。
提示：
一元二次方程的求根公式为：
![一元二次方程求根公式](/image/ErYuanYiCiFangChen.gif)
计算平方根可以调用`math.sqrt()函数：
```
>>> import math
>>> math.sqrt(2)
1.4142135623730951
```

