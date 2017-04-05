<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html; charset=utf-8"
         language="java" errorPage="" %>

<html>
<head>
  <title>处理结果</title>
</head>
<body>

<%
// 防止中文乱码
request.setCharacterEncoding("utf-8");

String username = request.getParameter("username");
String pwd = request.getParameter("pwd");

out.println("用户名为：" + username);
out.println("密码为：" + pwd);


// 获取全部参数
 Enumeration paramNames = request.getParameterNames();

 out.print("<ul>");
    while(paramNames.hasMoreElements()) {
        String paramName = (String)paramNames.nextElement();
        String paramValue = request.getParameter(paramName);
        out.print("<li>" + paramName + " : ");
        out.println( paramValue + "</li>");
    }

    out.print("</ul>");

%>

</body>
</html>
