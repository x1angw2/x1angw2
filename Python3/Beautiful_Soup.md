# Beautiful Soup
**install:** `pip3 install BeautifulSoup4`

*Beautiful Soup库是解析、遍历、维护“标签树”的功能库*

```python
from bs4 import BeautifulSoup

soup = BrautifulSoup('<p>data</p>','html.parser')
```
### 基本元素
| 基本元素 | 说明 |
| :- | :- |
| Tag | 标签，最基本的信息组织单元，分别<>和</>标明开头和结尾 |
| Name | 标签的名字，<p>...</p>的名字是'p',格式:<tag>.name |
| Attributes | 标签的属性，字典形式组织，格式：<tag>.attrs |
| NavigableString | 标签内非属性字符串,<>...</>中字符串，格式:<tag>.string |
| Comment | 标签内字符串的注释部分,一种特殊的Comment类型 |

