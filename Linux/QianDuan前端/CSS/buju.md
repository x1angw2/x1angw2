# 布局

### 文档流
1. 网页是一个多层的结构
- 通过CSS分别为每一层设置样式
- 用户只能看见最顶一层
- 最低层就是**文档流**，文档流是网页的基础
 - 我们所创建的元素默认在文档流中进行排列
- 对于我们来说元素主要有两个状态
 - 在文档流中
 - 不在文档流中(脱离文档流)
- 元素在文档流中有什么特点:
 - 块元素`<div></div>`
   - 块元素会在页面中独占一行
   - 默认宽度是父元素的全部
   - 默认高度是被内容撑开(子元素)
 - 行内元素`<span></span>`
   - 行内元素不会独占一行，只占自身大小
   - 行内元素在页面中向右水平排列，如果一行之中不能容纳下所有的行内元素，则元素会换到第二行继续向右排列
   - 默认宽度和高度都是被内容撑开

### 盒子模型(框模型、box model)
1. CSS将页面中的所有元素都设置为了一个矩形
- 将元素设置为矩形后，对页面的布局就变成了将不同的矩形放到页面不同的位置
- 每一个盒子由一下几个部分组成:
 - 内容区(content)
   - 元素中的所有子元素和文本内容都在内容区中排列
   - 内容区的大小由**width**和**height**两个属性决定：
 - 边框(border)
   - 属于盒子边缘，边框内属于盒子内部，边框外属于盒子外部
   - 要设置边框，需要至少三个内容
     - 边框的宽度 border-width(默认3px,所有可以不写)
       - border-width(上 右 下 左)(上 左右 下)(上下 左右)(上下左右)
     - 边宽的颜色 border-color
       - border-color((上 右 下 左)(上 左右 下)(上下 左右)(上下左右)
     - 边宽的样式 border-style
       - solid 实线
       - dotted 点状虚线
       - dashed 虚线
       - double 双线
       - none 无边框
     -简写:`broder:10px red solid;
       - 可以变更顺序
    - 四个方向
       - broder-top
       - berder-left
       - berder- bottom
       - breder-right
   - 边框的大小影响到矩形的大小
 - 内边距(padding)
   - 内容区和边框之间的距离
   - 四个方向
     - pedding-top
     - pedding-right
     - pedding-bottom
     - pedding-left
   - 内边距影响到矩形的大小
   - 背景颜色会衍生到内边距上
 - 矩形的可见框大小，有内容区、内边距和边框共同决定
 - 外边距(margin)
   - 外边距不会影响矩形可见框的大小
   - 但是外边距会影响盒子的位置
   - 四个方向
     - margin-top
     - margin-right
     - margin-bottom
     - margin-left
- 水平布局
 - 元素在其父元素中水平方向的位置由一下几个属性共同决定
   - margin-left
   - broder-left
   - padding-left
   - widht
   - pedding-right
   - border-right
   - margin-right
- overflow:\*
 - visible : 默认值，子元素会从父元素中溢出，在父元素外部的位置显示
 - hidden : 溢出内容会被裁剪，不会显示
 - scroll : 生成两个滚动条，通过滚动条来查看完整的内容
 - auto : 根据需要生成滚动条
- display:\* (用来设置元素显示的类型
 - inline : 将元素设置为行内元素
 - block : 将元素设置为块元素
 - inline-block : 将元素设置为行内块元素(既可以设置宽度和高度又不会独占一行)
 - table 将元素设置一个表格
 - none 元素不在页面显示,不占位置
- visibility:\*(用来设置元素的显示状态
 - visible : 默认值，元素在页面中正常显示
 - hidden : 元素在页面中隐藏，不显示，但是依然占据页面的位置




