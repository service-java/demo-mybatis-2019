<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>数据库测试</title>
</head>
<body>

<%
//驱动程序名
String driverName="com.mysql.jdbc.Driver";
String userName="root";
String userPasswd="ljc578762";
String dbName="runoob";
String tableName="websites";

//联结字符串
String url = "jdbc:mysql://localhost/" + dbName 
 			+ "?user=" + userName
 			+"&password=" + userPasswd;

Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection=DriverManager.getConnection(url);
Statement statement = connection.createStatement();


String sql="SELECT * FROM " + tableName;
ResultSet rs = statement.executeQuery(sql);
ResultSetMetaData rmeta = rs.getMetaData();
int numColumns = rmeta.getColumnCount();

// 遍历输出
while(rs.next()) {
	out.print(rs.getString(1) + "   ");
	out.print(rs.getString(2) + "   ");
	out.print(rs.getString(3));
	out.print("<br>");
}

rs.close();
statement.close();
connection.close();
%>

</body>
</html>
