# 字符串
#### 字符串处理方法
- `str.lower()`字符串全变小写
- `str.upper()`字符串全变大写
- `str.split(sep=None)`根据()内的符号分割字符串为列表
> "a,b,c".split(",")	输出为：`['a','b','c']
- `str.count(sub)`返回括号中的字符在字符串中出现的次数
- `str.replace(old,new)`返回字符串的副本，所以old替换成new
- `str.center(width[,fillchar])
> 字符串str根据宽度width居中，fillchar可选
```
"china".center(20,"-") 输出为：
'----------china-----------'
```
- str.strip(chars)去掉在左右两侧()中列出的字符
- str.join(iter)用字符添加到()中字符串每个字符的中间
```
",".join("12345")
输出
"1,2,3,4,5"
```
 
