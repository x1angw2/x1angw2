# 标签
- `<p>...</p>`                  段落标签
- `<span>...</span>`            自定义文本样式
- `<h1-6>...</h1-6>`            一至六级标题
- `<div>...</div>`              定义块
- `<head>...</head>`            定义头部区域
- `<body>...</body>`            定义身体部分
- `<footer>...</footer>`        定义底部区域
- `<section>...</section>`      定义区段
- `<aside>...</aside>`          定义侧边栏区


- `<br />`                      换行
- `&nbsp;`                      空格
- `<hr>`                        水平分割线
- ys                            无序列表
```html
<ul>
        <li>000</li>
        <li>999</li>
        <li>888</li>
</ul>
```
- ys                            有序列表
```html
<ol>
        <li>111</li>
        <li>222</li>
        <li>333</li>
</ol>
```
- `<img />`                       添加图片
```html
<img src = "/home/1.png" alt = "my image" title = "my image" />

src = 图片位置
alt = 描述文本，图像不可见时可见
title = 鼠标滑过时显示文本
```

- `<a>...<a />`                 超链接
```html
<a href = "http://wezhon.com" title = "鼠标滑过显示的文本">链接显示的文本</ a>

属性：
        target = "_self"        当前页面打开链接
        target = "_blank"       新窗口打开链接
```
- `<table>...</table>`          表格
```html
<table border="1">                      <!--表格开始标签,属性为加1像素的线-->
        <caption>...</caption>          <!--标题-->
                <tr>                    <!--行-->
                        <th>...</th>    <!--列(加粗)-->
                        <th>...</ht>
                </tr>
                <tr>
                        <td>...</th>
                        <td>...</th>
                </tr>
</table>
```
- `<form>`                        用户交互
```html
<form method="传送方式" action="服务器文件">

<!--<form>:成对出现，</form>结束
action:用户输入的数据被传送到的地方，比如一个PHP页面(save.php)
method:数据传送的方式(get/post)-->

<form method = "post" action = "home.php">
        <label for = "username">用户名</label>
        <input type = "text" name = "username" value = "默认"/>
        <label for = "passwd">密码</label>
        <input type = "password" name = "passwd" placeholder = "提示符"/>
</ form>

<!--
type类型有text和passwd：
        text为文本
        passwd为密码，显示为*号
value为预设默认值
placeholder为提示符
-->
```
<img src = "/image/1.png" />
- `<input type = "*"/>`
```html
<input type = "number">                         <!--只能输入数字-->
<input type = "url">                            <!--对话框内开头必须为http://或https://且后面必须有内容-->
<input type = "email">                          <!--内容必须有@，且后面必须有内容-->
```
- `<textarea>`                                  创建文本域
```html
<textarea rows = "行数" cols = "列数">文本</textarea>

cols:多行输入域的列数
rows:多行输入域的行数
<textarea></textarea>标签之间可以输入默认值

<form method="post" action="save.php">
        <label>联系我们</label>
        <textarea cols = "50" rows = "10">在这里输入内容...</textarea>
</form>
```
- `radion/checkbox`                             单选框/复选框
```html
<input type = "radio/checkbox" value = "值" name = "名称" checked = "checked" />

radio:控件为单选框
checkbox:控件为复选框
value:提交数据到服务器的值
name:为控件命名
checked:当checked="checked"时,该选项被默认选中

<form name = "iFrom" method = "post" action = "save.php">
        你是否喜欢Ys?<br />
        <input type = "radio" name = "radiolove" value = "喜欢"> 喜欢
        <input type = "radio" name = "radiolove" value = "非常喜欢"> 非常喜欢
        <input type = "radio" name = "radiolove" value = "极其喜欢"> 极其喜欢
        <br /><br />
        你对哪些运动感兴趣?<br />
        <input type = "checkbox" name = "checkbox1" value = "跑步" checked = "checked"> 跑步
        <input type = "checkbox" name = "checkbox1" value = "打球"> 打球
        <input type = "checkbox" name = "checkbox1" value = "登山"> 登山
        <input type = "checkbox" name = "checkbox1" value = "跳绳"> 跳绳
</form>

<!--同一组按钮，name值要一致-->
```
- `select、option`                              创建下拉菜单
```html
<!DOCTYPE html>
<html>
        <head>
                <meta charset = "UTF-8">
                <title>select下拉框</title>
        </head>
        <boby>
                <select>
                        <option value = "读书">读书</option>
                        <option value = "运动">运动</option>
                        <option value = "音乐">音乐</option>
                        <option value = "旅游">旅游</option>
                        <option value = "购物" selected = "selected">购物</option>
                </seltct>
        </body>
</html>

<!--value内容为提交到服务器的值，<>...<>为显示内容-->
```
- `<type = "submit" value = "提交">`            提交
```
<input = "submit" value = "提交">
```
- `<type = "reset" value = "重置">              重置
