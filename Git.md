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
查看远程库信息
	git remote
	更详细信息
		git remote -v
推送分支
	git push origin master
	git push origin <name>
本地创建和远程分支对应的分支
	git checkout -b branch-name /origin/branch-name
建立本地分支和远程分支的关联
	git branch --set-upstream branch-name origin/branch-name
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
删除一个未合并的分支
	git branch -D <name>
```
### 冻结现场
```c
冻结项目
	git stash
查看冻结的项目
	git stash list
恢复项目
	git stash apply
恢复项目并删除冻结缓存
	git stash pop
```
### 复制特定commit
```c
git cherry-pick
```
### 标签
```c
新建
	git tag <tagname>
		git tag v1.0
		默认HEAD
	指定标签信息
		git tag -a <tagname> -m "balabala"
查看标签
	git tag
删除标签
	git tag -d v0.1
推送标签到远程
	git push origin v1.0
	一次性推送全部
		git push origin --tags
删除远程标签
	1.先删除本地
		git tag -d v1.0
	2.远程删除
		git push origin :refs/tags/v1.0
```
### 自定义git
```c
显示颜色
	git config --global color.ui true
自动忽略文件
	创建.gitignore文件，把需要忽略的文件写入其中
	.gitignore需要提交
配置别名
	git config --global alias.st status
	git config --global alias.co checkout
	git config --global alias.ci commit
	git config --global alias.br branch
配置文件
	.git/config
```
