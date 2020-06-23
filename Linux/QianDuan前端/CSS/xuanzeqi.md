# CSS 选择器
语法:`标签名{}`
### 单个选择器
- p
 - 选择所有p标签

 ```html
  <style>
         p{
                 color:red;
          }
  </style>

 <p>china</p>
 ```
- \#id
 - 根据标签id选择
 - `#+id属性值`

 ```html
 <style>
         #ys{
         color:red;
         }
 </style>

 <p id="ys">china</p>
 ```
- .class
 - id值不能重复,class可以重复。
 - `.+class属性值`

 ```html
 <p id="one">world</p>
 <p id="two">world</p>

 <p class="one">china</p>
 <p class="one">china</p>
 ```

 ```
 .ys{
        color:red;
    }
 
 <p class="ys">hongkong</p>

 <!-- 一个标签可以设置多个class属性值-->
 <p class="one two">china</p>
 ```
- \*
 - 通类选择器，所有元素

 ```html
 *{
        color:red;
  }
 ```

### 复合选择器
 ```html
 <div class="chongqing">china</div>

 <p class="chongqing">china</p>
 ```
- 交集选择器
 - 作用：选择同时符合多个条件的元素
 - 语法：选择器1选择2选择器3{}
 - `与`
 ```html
 <style>
        /* 将class为chongqing的元素设置为红色 */
        .red{
                color:red;
            }

        /* 将p标签的class为chongqing的元素字体设置为30px */
        p.red{
                font-size:30px;
        }
 </style>
 ```
- 选择器分组(并集选择器)
 - 作用：同时选择多个选择器对应的元素
 - 语法：选择1,选择器2,选择器n{}
 - `或`
 ```html
 div,p{
        color:red;
      }
 ```     

### 关系选择器
```html
<body>
        <div>
                我是一个div
                <p>
                        我是一个p标签
                        <span>我是p元素的span</span>
                </p>
                <span>我是div的span</sapn>
        </div>
</body>
<!--
        父元素
                直接包含子元素的元素叫做父元素
        子元素
                直接被父元素包含的元素叫子元素
        祖先元素
                直接或间接包含后代元素的元素叫做祖先元素
                一个元素的父元素也是它的祖先元素
        后代元素
                直接或间接被祖先元素包含的元素叫做后代元素
                子元素也是后代元素
        兄弟元素
                拥有相同父元素的元素是兄弟元素
-->
```

- 子元素
 - 语法： `父元素 > 子元素 {}`
- 后代元素
 - 语法：`父元素 子元素{}`
- 下一个兄弟元素
 - 语法：`兄 + 弟`
- 下面所有兄弟元素
 - 语法：`兄 ～ 弟`
### 属性选择器
- p[color]
 - 选择p元素中的含有color属性的标签
 - p：标签
 - color：p元素中的color属性
- p[color=red]
 - 同上，只选择属性值为red的标签
- p[title^=a]
 - 选择属性值以a开头的标签
- p[title$=c]
 - 选择属性值以a结尾的标签
- p[title\*=a]
 - 含有属性值有a的标签

### 伪类 & 伪元素
```html
<body>
        <ul>
                <li>第一个</li>
                <li>第二个</li>
                <li>第三个</li>
                <li>第四个</li>
                <li>第五个</li>
                <li>第六个</li>
        </ul>
</body>
```
- 伪类`:`
 - 用来描述一个元素的特殊状态
 - 比如，第一个子元素，被点击的元素，鼠标移入的元素等
 - 对所有子元素进行排序
 - :first-child
  ```html
  ul > li:first-child
   选择第一个
  ```
 - :last-child
  ```html
  ul > li:last-child
  选择最或一个
  ```
 - net-child()
  - 选择第n个,在括号内输入n
   - 输入n选择所有
   - 输入2n，选择偶数
   - 输入2n+1,选择奇数
   - odd 奇数
   - even 偶数
  - :first-of-type
  - :last-of-type
  - :net-of-type()
   - 以上三个可以在不同类元素排序
  - :not()
   - 将符合条件的去掉
   - `ul > li:not(:nth-child(3))`
  - a:link
   - 没访问过的链接
  - a:visited
   - 访问过的链接。(只能改颜色)
  - a:hover
   - 鼠标移入的状态
  - a:active
   - 鼠标点击
- 伪元素`::`
 - 表示页面中一些特殊的并不真实存在的元素。
 - p::first-letter
   - p元素中第一个字母
 - ::first-line
   - 第一行
 - ::selection
   - 鼠标选中
 - ::before  ::after
   - 元素开始的位置
   - 元素结束的位置
   - 必须结合content属性来使用

 


- 语法：``
 - 语法：``
 - 语法：``
