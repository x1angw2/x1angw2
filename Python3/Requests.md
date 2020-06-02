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

#### requests.get
requests.get(url,params=None,\*\*kwargs)
- url:拟获取页面的url链接
- patams:url中的额外参数，字典或字节流格式，可选
- \*\*kwargs:12个控制访问的参数

