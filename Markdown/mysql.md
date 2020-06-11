# Mysql
## install
```c
install mysql mysql-server
```
## 初始化
```c
加载数据库
	mysql -u root -p < init-test-data.sql
基本查询
	SELECT * FROM <表名>
		*：列出所有表;
条件查询-WHERE
	SELECT * FROM <表名> WHERE <条件表达式>
		条件
			<条件1> AND <条件2>
			<条件1> OR <条件2>
			NOT <条件>
	SELECT * FROM students WHERE score >= 80
		stundents:表名
		score:列名
投影查询-查询指定列
	SELECT id, score, name FROM students;
	输出修改列名
		SELECT id, score points, name FROM students;
			score 显示为 points
排序-ORDER BY
	SELECT id, name, gender, score FROM students ORDER BY score;
		按score从低到高
	SELECT id, name, gender, score FROM students ORDER BY score DESC;
		按score从高到低
	DESC倒序   ASC升序（默认可省略）
分页查询
	LIMIT <M> OFFSET <N>
		结果集中“截取”出第M~N条记录

```
### 管理
```c
列出所有数据库
	SHOW DATABASES;
创建一个数据库
	CREATE DATABASE name;
删除一个数据库
	DROP DATABASE name;
切换数据库
	USE name;
列出当前数据库所有表
	SHOW TABLES;
查看一个表的结构
	DESC students;
查看创建表的SQL语句
	SHOW CREATE TABLE students;
创建表
	CREATE TABLE ???
删除表
	DROP TABLE ??
修改表
	给students表新增一列birth：
		ALTER TABLE students ADD COLUMN birth VARCHAR(10) NOT NULL;
	修改birth列，例如把列名改为birthday，类型改为VARCHAR(20)：
		ALTER TABLE students CHANGE COLUMN birth birthday VARCHAR(20) NOT NULL;
删除列
	ALTER TABLE students DROP COLUMN birthday;
快照
	对class_id=1的记录进行快照，并存储为新表students_of_class1:
		CREATE TABLE students_of_class1 SELECT * FROM students WHERE class_id=1;
```
### 修改数据
```c
INSERT-插入
	INSERT INTO <表名> (字段1, 字段2, ...) VALUES (值1, 值2, ...);
	一次性修改多条记录：
		INSERT INTO students (class_id, name, gender, score) VALUES
  		(1, '大宝', 'M', 87),
  		(2, '二宝', 'M', 81);
UPDATE-更新
	UPDATE <表名> SET 字段1=值1, 字段2=值2, ... WHERE ...;
DELETE-删除
	DELETE FROM <表名> WHERE ...;
```
### 常用的条件表达式
```c
条件	表达式举例1	表达式举例2	说明
使用=判断相等	score = 80	name = 'abc'	字符串需要用单引号括起来
使用>判断大于	score > 80	name > 'abc'	字符串比较根据ASCII码，中文字符比较根据数据库设置
使用>=判断大于或相等	score >= 80	name >= 'abc'	
使用<判断小于	score < 80	name <= 'abc'	
使用<=判断小于或相等	score <= 80	name <= 'abc'	
使用<>判断不相等	score <> 80	name <> 'abc'	
使用LIKE判断相似	name LIKE 'ab%'	name LIKE '%bc%'	%表示任意字符，例如'ab%'将匹配'ab'，'abc'，'abcd'
```

