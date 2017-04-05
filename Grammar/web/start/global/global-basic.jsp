<%--
  Created by IntelliJ IDEA.
  User: Luo_0412
  Date: 2017/4/6
  Time: 1:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.Locale" %>
<%@ page import="javax.servlet.*,javax.servlet.http.* "%>
<%@ page import="java.text.NumberFormat,java.util.Date" %>
<%@ page import="java.text.DateFormat,java.util.Date" %>


<%
    String title = "Locale Specific Currency";
    //Get the client's Locale
    Locale locale = request.getLocale( );
    NumberFormat nft = NumberFormat.getCurrencyInstance(locale);
    String formattedCurr = nft.format(1000000);
%>
<html>
<head>
    <title><% out.print(title); %></title>
</head>
<body>
<center>
    <h1><% out.print(title); %></h1>
</center>
<div align="center">
    <p>Formatted Currency: <%  out.print(formattedCurr); %></p>
</div>


<%
    title = "Locale Specific Dates";
    //Get the client's Locale
    locale = request.getLocale( );
    String date = DateFormat.getDateTimeInstance(
            DateFormat.FULL,
            DateFormat.SHORT,
            locale).format(new Date( ));
%>


<center>
<h1><% out.print(title); %></h1>
</center>
<div align="center">
    <p>Local Date: <%  out.print(date); %></p>
</div>


<%
    // Set response content type
    response.setContentType("text/html");
    // Set spanish language code.
    response.setHeader("Content-Language", "es");
    title = "En Espa?ol";

%>

<center>
    <h1><%  out.print(title); %></h1>
</center>
<div align="center">
    <p>En Espa?ol</p>
    <p>?Hola Mundo!</p>
</div>



</body>
</html>
