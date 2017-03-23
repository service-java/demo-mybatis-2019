<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>测试&lt;c:out&gt;标签</title>
</head>
  
<body>
<!-- escapeXml 是否转化 < -->
escapeXml属性值为false时：<c:out value="<hr>" escapeXml="false"/>

escapeXml属性值为true时：<c:out value="<hr>"/><br>
第一种语法格式：<c:out value="${name}" default="name的值为空"/><br>

第二种语法格式：<c:out value="${name}">name的值为空</c:out>
   
</body>
</html>
