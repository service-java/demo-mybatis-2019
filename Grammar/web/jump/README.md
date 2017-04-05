#### 第一次提升技巧

* xml处理

```
// 把下面两个jar包放到 WEB_INF/lib
XercesImpl.jar
xalan.jar


// 注意及时刷新
``` 

* JavaBean

```
title=title.replace("<","&lt;");						//替换标题中的“<”字符
title=title.replace(">","&gt;");						//替换标题中的“>”字符
content=content.replace("<","&lt;");					//替换内容中的“<”字符
content=content.replace(">","&gt;");					//替换内容中的“>”字符

<%@ page import="toolbean.MyTools" %>
title=MyTools.change(title);		
content=MyTools.change(content);
	
// 使用JavaBean来实现	
```
