# turtle库
#### 概述
turtle(海龟)库：绘图体系
> 1969年诞生，主要用于程序设计入门

> Python语言的**标准库**之一

> 入门级的图形绘制函数库

#### 绘图窗体
> 最小单位是像素
```
turtle.setup(width,height,startx,starty)
```
>> setup()设置窗体大小及位置

>> 4个参数中后两个可选

>> 不是必要的，只有需要设置窗体大小和位置时才需要

>> `widht`窗体的宽度

>> `height`窗体的高度

>> `startx`窗体距屏幕的距离-x坐标

>> `starty`窗体距屏幕的距离-y坐标
#### 空间坐标体系
坐标分为**绝对坐标**和**相对坐标**
**绝对坐标：**以画布空间坐标为准
![juedui](/image/python/turtle_ZuoBiao_JueDui.png)
>> 初始位置为画面最中心

**turtle.goto(x,y)**

>> `x,y`为坐标系的x轴和y轴

**相对坐标：**以海龟为中心，分为海龟的前后左右。
![xiangdui](/image/python/turtle_ZuoBiao_XiangDui.png)

> `turtle.fd(d)`向海龟的正前方前进

> `turtle.bk(d)`向海龟的正后方前进

> `turtle.circle(r,angle)`以海龟的左侧的某一个点为圆心进行曲线运行
#### 角度坐标体系
[^-^]:
![jiaodu](/image/python/turtle_ZuoBiao_JiaoDu.png)(`>>`).
<img src="/image/python/turtle_ZuoBiao_JiaoDu.png" width = "30%"/>
> `turtle.seth(angle)`改变海龟的前进方向，只改变方向，不留足迹。`angle`绝对度数

> `turtle.left(angle)向左

> `turtle.right(angle)向右


