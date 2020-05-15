# oh-my-zsh git 慢/卡顿问题解决

> 在`oh-my-zsh`进入包含`git`仓库目录时，会变的比平时慢/卡顿

> 原因是因为`oh-my-zsh`要获取`git`更新信息

*解决办法*

> 设置`oh-my-zsh`不读取文件变化信息(在git项目目录执行下列命令)

```
$ git config --add oh-my-zsh.hide-dirty 1
# 如果你还觉得慢，可以设置oh-my-zsh不读取任何git信息
$ git config -add oh-my-zsh.hide-status 1

```
> 如果想恢复，设置成0就好。

[原地址](http://jianshu.com/p/bc4b8131db05) 
