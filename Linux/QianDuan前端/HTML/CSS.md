# CSS样式
```html
p{
        font-size:12px;
        color:red;
        font-weight:bold;
}
```
CSS全称为"层叠样式表(Cascading Style Sheets)",它主要是用于定义HTML内容在浏览器内的显示样式,如文字大小、颜色、字体加粗等。
### 注释
```
HTML
        <!--注释内容。-->
CSS
        /*注释内容。*/
```
### 内联式、嵌入式和外部式
#### 内联式
```html
<p style = "color:red;font-size:12px">110</p>
```
#### 嵌入式
```html
<style type = "text/css">
        span{
                color:red;
                font-seze:13px;
            }
</style>

<span>adcdefg</sapn>

<style></style>一般写在head内
```
#### 外部式(外联式)
把css代码单独写在一个文件中,然后调用。文件后缀为:.css
然后用link链接。
```html
<link herf = "base.css" rel = "stylesheet" type = "text/css" />

<!--rel = "stylesheet" type = "text/css"为固定写法，不可修改.-->
<!--一般写在head内-->
```

**优先级:内联式 > 嵌入式 > 外部式**

