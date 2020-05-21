# Samba

#### 安装Samba
```
cat /etc/redhat-release

rpm -qa | grep samba

yum install samba
```
#### 关闭selinux和防火墙
```
setenforce 0 

sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config

systemctl stop firewalld

systemctl disable firewalld
```
#### 配置Samba配置文件
```
> cp /etc/samba/smb.conf /etc/samba/smb.conf.bak
```
```
vim /etc/samba/smb.conf 
```
``` 
# See smb.conf.example for a more detailed config file or
# read the smb.conf manpage.
# Run 'testparm' to verify the config is correct after
# you modified it.

[global]                                    //全局配置
        workgroup = SAMBA
        security = user

        passdb backend = tdbsam

        printing = cups
        printcap name = cups
        load printers = yes
        cups options = raw

[homes]
        comment = Home Directories
        valid users = %S, %D%w%S
        browseable = No
        read only = No
        inherit acls = Yes

[printers]                                  //共享打印机配置
        comment = All Printers
        path = /var/tmp
        printable = Yes
        create mask = 0600
        browseable = No

[print$]
        comment = Printer Drivers
        path = /var/lib/samba/drivers
        write list = @printadmin root
        force group = @printadmin
        create mask = 0664
        directory mask = 0775

[durant]                            //这个是共享文件夹标识，表示登录samba打开时显示的文件夹名称。配置了多少个共享文件夹标识，登录samba时就会显示多少文件夹。                                           
       comment = this is the info   //comment是对该共享的描述，可以是任意字符串
       path= /home/durant           //共享的路径
       writable = yes               //是否可写入
       public = no                  //是否公开
```
#### 添加durant账号
```
# 设置不允许登录系统且用户的家目录为/home/china的china账号
useradd -d /home/china -s /sbin/nologin china
```
#### pdbedit 命令说明
```
pdbedit 命令用于管理Samba服务的帐户信息数据库，格式为："pdbedit [选项] 帐户"
第一次把用户信息写入到数据库时需要使用-a参数，以后修改用户密码、删除用户等等操作就不再需要了。
 
pdbedit -L ：查看samba用户
pdbedit -a -u user：添加samba用户
pdbedit -r -u user：修改samba用户信息
pdbedit -x -u user：删除samba用户
 
samba服务数据库的密码也可以用 smbpasswd 命令 操作
smbpasswd -a user：添加一个samba用户
smbpasswd -d user：禁用一个samba用户
smbpasswd -e user：恢复一个samba用户
smbpasswd -x user：删除一个samba用户
```
#### 将china添加为samba用户
```
[root@samba-server ~]# pdbedit -a -u durant
new password:                         //设置durant使用的samba账号密码，比如123456
retype new password:                  //确认密码
Unix username:        durant
NT username:          
Account Flags:        [U          ]
User SID:             S-1-5-21-3966910846-3390734216-1763763463-1001
Primary Group SID:    S-1-5-21-3966910846-3390734216-1763763463-513
Full Name:            
Home Directory:       \\samba-server\durant
HomeDir Drive:        
Logon Script:         
Profile Path:         \\samba-server\durant\profile
Domain:               SAMBA-SERVER
Account desc:         
Workstations:         
Munged dial:          
Logon time:           0
Logoff time:          Wed, 06 Feb 2036 23:06:39 CST
Kickoff time:         Wed, 06 Feb 2036 23:06:39 CST
Password last set:    Thu, 13 Jun 2019 16:26:31 CST
Password can change:  Thu, 13 Jun 2019 16:26:31 CST
Password must change: never
Last bad password   : 0
Bad password count  : 0
Logon hours         : FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF

# 接着修改samba用户的家目录权限
[root@samba-server ~]# chown -Rf durant:durant /home/durant
```
#### 启动Samba服务
```
systemctl start smb

systemctl enable smb

systemctl restart smb

systemctl status smb
```
#### 客户端设置
**Windows**
1. 我的电脑-右键-映射网络驱动器
2. 输入地址[\\192.168.0.1\china]、账号和密码
**Linux**
```
# 客户端机操作
mkdir /smb
mount -t cifs //192.168.0.1/china -o username=china,password=12345 /china
```







原文链接：https://blog.csdn.net/wc1695040842/java/article/details/91866500

