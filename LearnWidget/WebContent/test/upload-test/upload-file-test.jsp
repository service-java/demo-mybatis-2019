<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<jsp:useBean id="conn" scope="page" class="com.ConnDB" />

<%
String sql="SELECT * FROM  tb_file";
ResultSet rs = conn.executeQuery(sql);
%>

<html>
<head>
<title>文件上传与下载</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
  <table width="620" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="73" colspan="3" background="images/title.jpg">&nbsp;</td>
  </tr>
  <tr>
    <td width="25" rowspan="2" align="center" valign="top" background="images/left_a.jpg">&nbsp;</td>
    <td width="575" align="center" valign="top"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#9A0000">
      <tr>
        <td width="63%" height="27" align="center" bgcolor="#FFFFFF">文件名&nbsp;</td>
        <td width="22%" align="center" bgcolor="#FFFFFF">文件大小</td>
        <td width="15%" align="center" bgcolor="#FFFFFF">下载</td>
      </tr>
<%
String name="";
while(rs.next()){
name=rs.getString("name");
	
%>      
      <tr>
        <td height="27" align="center" bgcolor="#FFFFFF">&nbsp;<%=name%></td>
        <td align="center" bgcolor="#FFFFFF">&nbsp;<%=rs.getInt("fileSize")%></td>
        <td align="center" bgcolor="#FFFFFF">&nbsp;<a href="download.jsp?filename=<%=name%>">下载</a></td>
      </tr>
<%}%>
    </table></td>
    <td width="20" rowspan="2" background="images/right.jpg">&nbsp;</td>
  </tr>
  <tr>
    <td height="30" align="right" valign="bottom"><input name="Submit" type="button" class="btn_bg" value="上传文件"  onClick="window.open('upfile.jsp','','width=350,height=150');">
    &nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td height="30" colspan="3" background="images/bottom.jpg">&nbsp;</td>
  </tr>
</table>
</body>
</html>
