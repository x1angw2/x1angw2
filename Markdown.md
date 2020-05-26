# 备忘
#### 插入图片
```
![name](/image/name.jpg)
```
**HTML** 可以设置图片属性
```
<img src="/image/name.jpg" width = "30%" />
```
#### git设置代理
添加代理
```
git config --global http.proxy http://127.0.0.1:12345
git config --global https.proxy http://127.0.0.1:12345
```
取消代理
```
git config --global --unset http.proxy
git config --global --unset https.proxy
```
查看代理
```
git config --global --get http.proxy
git config --global --get https.proxy
```
#### Markdown注释
````
[comment]:<> (this is a comment.)


[//]:<>(this is a comment.)

[//]:#(this is a comment.)


[^_^]:
	this 
	is 
	a 
	comment.
(`>>`).

