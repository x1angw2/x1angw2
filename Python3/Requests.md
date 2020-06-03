# Reuqests
### Requests库的7个主要方法

| 方法 | 说明 |
| :- | :- |
| requests.request() | 构造一个请求，支撑以下各方法的基础方法 |
| requests.get() | 获取HTML网页的主要方法，对应于HTTP的GET |
| requests.head() | 获取HTML网页头信息的方法，对应于HTTP的HEAD |
| requests.post() | 向HTML网页提交POST请求的方法，对应于HTTP的POST |
| requests.put() | 向HTML网页提交PUT请求的方法，对应于HTTP的PUT |
| requests.patch() | 向HTML网页提交局部修改请求，对应于HTTP的PATCH |
| requests.delete() | 向HTML网页提交删除请求，对应于HTTP的DELETE |
---
#### Response对象的属性
| 属性 | 说明 |
| :- | :- |
| r.status\_code | HTTP请求的返回状态，200表示连接成功，404表示失败 |
| r.text | HTTP响应内容的字符串形式，即url的页面内容 |
| r.encoding | 从HTTP header中猜测的响应内容编码方式  |
| r.apparent\_encoding | 从内容中分析出响应内容编码方式(备选编码方式) |
| r.content | HTTP响应内容的二进制形式 |

- `r.encoding`:如果header中不存在charset，则认为编码为ISO-8859-1
- `r.apparent\_encoding`:根据网页内容分析出的编码方式
---
#### Requests库的异常
| 异常 | 说明 |
| :- | :- |
| requests.ConnectionError | 网络连接错误异常，如DNS查询失败、拒绝连接等 |
| requests.HTTPError | HTTP错误异常 |
| reuqests.URLRequired | URL缺失异常 |
| reuqests.TooManyRedirects | 超过最大重定向次数，产生重定向异常 |
| reuqests.ConnectTimeout | 连接远程服务器超时异常 |
| reuqests.Timeout | 请求URL超时，产生超时异常 |
| r.raise\_for\_status() | 如果不是200，产生异常requests.HTTPError |
---
#### requests.get
requests.get(url,params=None,\*\*kwargs)
- url:拟获取页面的url链接
- patams:url中的额外参数，字典或字节流格式，可选
- \*\*kwargs:12个控制访问的参数

#### requests.request(method,url,\*\*kwargs)
**method:** 请求方式，对应get/put/post等7种
1. r = requests.request('GET',url,\*\*kwargs)
2. r = requests.request('HEAD',url,\*\*kwargs)
3. r = requests.request('POST',url,\*\*kwargs)
4. r = requests.request('PUT',url,\*\*kwargs)
5. r = requests.request('PATCH',url,\*\*kwargs)
6. r = requests.request('delete',url,\*\*kwargs)
7. r = requests.request('OPTIONS',url,\*\*kwargs)

**url:**
拟获取页面的url链接
**\*\*kwargs:**控制访问的参数，共13个(可选项)
> **params:**字典或字节序列，作为参数增加到url中
```
>>> kv = {'key1':'value1','key2':'value2'}
>>> r = requests.request('GET','http://python123.io.ws',params=kv)
>>> print(r.url)
http://python123.io/ws?key1=value1&key2=value2
```
> **data:**字典、字节序列或文件对象，作为Request的内容
```
>>> kv = {'key1':'value1','key2':'value2'}
>>> r = requests.request('POST','http://python123.io.ws',data=kv)
>>> body = '主体内容' 
>>> r = requests.request('POST','http://python123.io/ws',data=body)
```
> **json:**JSON格式的数据，作为Request的内容
```
>>> kv = {'key1':'value1'}
>>> r = requests.request('POST','http://python123.io/ws',json=kv)
```
> **headers:**字典，HTTP定制头
```
>>> hd = {'user-agent':Chrome/10'}
>>> r = requests.request('POST','http://python123.io/ws',headers=hd)
```
> **cookies:**字典或CookieJar,Request中的cookie
> **ayth:**元组，支持HTTP认证功能
> **files:**字典类型，传输文件
```
>>> fs = {'file':open('data.xls','rb')}
>>> r = requests.request('POST','http://python123.io/ws',files=fs)
```
> **timeout:**设定超时时间，秒为单位
```
r = requests.request('GET',http://www.baidu.com',timeout=10)
```
> **proxies:**字典类型，设定访问代理服务器，可以增加登陆认证
```
>>> pxs = {'http':'http://user:pass@118.24.119.135:10086''https':'https://118.24.119.135'}
>>> r = requests.request('GET','http://www.baidu.com',proxies=psx)
```
> **aloow\_redirects:**True/False,默认为True，重定向开关
> **stream:**True/False,默认为True,获取内容立即下载开关
> **verify:**True/False,默认为True，认证SSL证书开关
> **cert:**本地SSL证书路径

### 爬取网页的通用代码框架
```python
try:
        r = requests.get(url,timeout=30)
        r.raise_for_status()
        r.encoding = r.apparent_encoding
        return r.text
except:
        return "产生异常"
```        
> **网络连接有风险，异常处理很重要。**
