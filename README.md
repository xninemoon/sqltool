## sqltool
数据库连接工具，使用的 hsqldb中带的 sqltool。
## 使用
clone文件夹，添加到环境变量然后就可以直接键入如下命令使用
```
sqltool
```
已自带hsql, h2, mysql, pgsql, sqlite的jdbc
如果需要其他的jdbc，添加到 libs目录即可;

进入后, 链接数据库
```
\j $username [$password] $url
```
示例
```
\j SA jdbc:sqlite:ac.db
```

`\?` 可以打印帮助
`\dt` 显示所有的表
`\d $tablename` 显示表详情

更多见： http://blog.ninx.net/archives/hsql%E4%BD%BF%E7%94%A8#sqltool