# Git
### 安装
```c
instal git
定义全局变量
	git config --global user.name "Your Name"
	git config --global user.email "email@example.com"
```
### 使用
```c
初始化
	git init
```

```c
把文件添加到暂存区
	git add file
把暂存区文件添加到当前分支
	git commit -m "说明"
查看当前状态
	git status
查看文件修改内容
	git diff filename
查看修改日志
	git log
回退到指定版本
	git reset --hard commit_id
查看命令历史
	git reflog
删除文件
	git rm filename
	git commit -m ""
```
### 远程仓库
```c
生成ssh密钥
	ssh-keygen -t rsa -C "youremail@example.com"

	.ssh/id_rsa 	=	私钥 
	ssh/id_rsa.pub	=	公钥
本地仓库关联远程库
	git remote add origin github地址
本地内容推送到远程库
	git push -u origin master
		-u Git不但会把本地的master分支内容推送的远程新的master分支，还会把本地的master分支和远程的master分支关联起来，在以后的推送或者拉取时就可以简化命令。
克隆远程库到本地
	git clone github地址
```
### 分支管理
```c
查看分支
	git branch
创建分支
	git branch <name>
切换分支
	git checkout或者git switch <name>
创建+切换分支
	git checkout -b <name>或者git switch -c <name>
合并某分支到当前分支
	git merge <name>
删除分支
	git branch -d <name>
```

