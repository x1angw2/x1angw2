# Linux网络配置
### 手动配置网络
> 手动配置ip地址
>> 自动获取ip地址
```dhclient```
>> 编辑网卡配置文件
```vim /etc/sysconfig/network-scripts/ifcfg-***```
```
BOOTPROTO="dhcp" 
# 修改为
BOOTPROTO="static"

ONBOOT="no"
# 修改为
ONBOOT="yes"

# 新增
IPADDR="*.*.*.*"	# 配置ip地址
NETMASK="255.*.*.&"	# 配置子网掩码
GATEWAY="192.168.*.*"	# 配置网关
DNS1="119.29.29.29"	# 配置DNS
```
>> 重启网卡
```systemctl restart network.service``` 
