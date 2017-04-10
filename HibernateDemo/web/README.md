#### Herbinate-demo

* 说明

```

```

* 二级缓存

```

```

* 用户信息管理

```
// 文件没有整理完毕
// 先只关注以下文件

model/Info.java
model/Info.hbm.xml

src/hibernate.cfg.xml // 做Info的映射 

hibernatesession/HibernateFactorySession.java // 初始化类
util/UtilMethod.java // 用户增删改查的静态方法

index.jsp // 分页显示用户信息
add-info.jsp 
update-info.jsp

servlet/AddInfoServlet.java
servlet/UpdateInfoServlet.java
servlet/DelInfoServlet.java
web.xml // 配置上述

// <a href="/DelInfoServlet/?id=<%=info.getId() %> >
// 之前错误地在Servlet后加了 / 导致一直404找不到
```