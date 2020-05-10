##ssh-keygen的用法
```
ssh-keygen -t rsa -C "xingxi"
	-t 指定密钥类型，默认是rsa，可以省略
	-C 设置注释文字，比如邮箱
	-f 指定密钥文件存储文件名
id_rsa
	密钥
id_rsa.pub
	公钥
