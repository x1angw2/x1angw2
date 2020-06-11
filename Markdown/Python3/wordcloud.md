#wordcloud
wordcloud库把词云当中一个WordCloud对象
- wordcloud.WordCloud()代表把一个文本对应的词云
- 可以根据文本中词语出现的频率等参数绘制词云
- 可以设置参数

### 常规方法
w = wordcloud.WordCloud()
| 方法 | 描述 |
| :-: | :- |
| w.generate(txt) | 向WordCloud对象w中加载文本txt，>>> w.wenerate("I Love YS") |
| w.to\_file(filename) |将词云输出为图像文件，.png或.jpg文件格式 |
#### 配置对象参数
w = wordcloud.WordCloud(<参数>)
| 参数 | 描述 |
| :-: | :- |
| widht | 指定词云对象生成的图片宽度，默认400像素 >> w = wordcloud.WordCloud(wigth=600) |
| height | 指定词云对象生成的图片高度，默认200像素 |
| min\_font\_size | 指定最小字号，默认4号 |
| max\_font\_size | 指定最大字号，根据高度自动调节 |
| font\_step | 指定词云中字体字号的步进间隔，默认为1 |
| font\_path | 自定字体文件的路径，默认None (font\_path("name.ttf")
| max\_words | 指定词云的最大单词数量，默认200 |
| sto\_words | 指定词云的排除词列表，即为不显示的单词列表 (stop\_words={"china"}) |
| mask | 指定词云形状，默认长方形，需要引用imread()函数  >>> form scipy.misc import imaread >>> mk=imread("pic.png") >>> w = wordcloud.WordCloud(mask=mk) |
| background\_color | 指定词云图片的背景颜色，默认黑色 |

