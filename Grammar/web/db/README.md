#### JSP数据库操作

* 原生方式操纵数据库

```
jdbc:mysql://localhost:3306/luodb87?autoReconnect=true&useSSL=false


```

* jstl操作数据库

```

```

* javabean操作数据库

```
DBCurd // 有冗余,不会再用,只是舍不得删

DBHelper // 初学Java的时候用的,功能全一点，但不是很好用
https://github.com/luo0412/hello-java/blob/master/FinalLab/src/util/DBHelperTest.java

MySQLDBHelper // 相对还好用
https://github.com/luo0412/hello-java/blob/master/FinalLab/src/util/MySQLDBHelperTest.java

暂时先用 ConnDB // 减少了部分冗余 把数据库信息独立了出去,可以hide properties文件
```