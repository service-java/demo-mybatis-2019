<%@page import="com.itzcn.hibernatesession.HibernateSessionFactory"%>
<%@page import="com.itzcn.model.Info"%>
<%@page import="com.itzcn.util.UtilMethod"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   
    <title>用户信息列表</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">   
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
  <style>
#one {
	margin:auto;
	background:url(images/1011.jpg);
	background-repeat:no-repeat;
	height:392px;
	width:722px;	
}
#two {
	position:relative;
	font-size: 12px;
	margin-top:150px;
	margin-left:90px;	
	width:600px;	
	float:left;
	font-size: 16px;
}
#three {
 position:relative;
 width:200px; 
 margin-top:150px;
 margin-right:60px;
 float:right;
}
</style>
  </head>
  
  <body>
  <div id="one">
		<div id="two">
			 <%
  int pageNo=1;//当前第几页
  int count = UtilMethod.getCount();//总数
  int pageSize = 2;//每页数据
  int pageCount = (count%pageSize==0)?(count/pageSize):(count/pageSize + 1);
      String pageNoStr = request.getParameter("pageSize");
   if (pageNoStr != null && !"".equals(pageNoStr)) {
            pageNo = Integer.parseInt(pageNoStr);
        }
       
        request.setAttribute("pageCount", pageCount);
        request.setAttribute("pageNo", pageNo);
       
        List<Info> listInfo = UtilMethod.findByPage(pageNo, pageSize);
        Iterator iterator = listInfo.iterator();
   %>
   <h3 align="center">用户信息列表</h3>
   <form name="form1" method="post" action="index.jsp" >
   <table align="center" width="100%" border="1">
   <tr>
       <th width="10%">编号</th>
       <th width="15%">名字</th>
       <th width="15%">密码</th>
       <th colspan="2" width="20%">操作</th>
   </tr>
    <%
        while (iterator.hasNext()) {
            Info info = (Info) iterator.next();
            %>
            <tr align="center">
            <td><%=info.getId() %></td>
            <td><%=info.getName() %></td>
            <td><%=info.getPass() %></td>
            <td><a href="upInfo.jsp?id=<%=info.getId() %>">更新</a></td>
            <td><a href="servlet/DelInfoServlet?id=<%=info.getId() %>" onclick="return confirm('是否确认删除？')">删除</a></td>
            </tr>
           
            <%
        }%>
         <tr align="center"><td colspan="3">共${pageCount}页，当前第${pageNo }页<a href="index.jsp?pageSize=1" >首页</a>
         <c:choose>
             <c:when test="${pageNo <= pageCount && pageNo>1}">
                 <c:catch><a href="index.jsp?pageSize=${pageNo-1}">上一页</a></c:catch>
             </c:when>
             <c:otherwise></c:otherwise>
         </c:choose>
         <c:choose>
             <c:when test="${pageNo < pageCount && pageNo>0}">
                <c:catch><a href="index.jsp?pageSize=${pageNo+1}">下一页</a></c:catch>
             </c:when>
             <c:otherwise></c:otherwise>
         </c:choose>
         <a href="index.jsp?pageSize=${pageCount}">末页</a>
       
        <select name="pageSize" id="pageSize">
            <c:forEach begin="1" end="${pageCount}" step="1"
                var="toPage">
                <c:choose>
                    <c:when test="${pageNo == toPage}">
                        <c:catch>
                            <option selected="selected">${pageNo}</option>
                        </c:catch>
                    </c:when>
                    <c:otherwise>
                        <option>${toPage}</option>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            </select>
            <input type="submit"  value="跳转"></td>
            <td align="center" colspan="2"><a href="addInfo.jsp">添加用户</a></td>
            </tr>
            </table>
            </form>
           
    <%HibernateSessionFactory.closeSession(); %>
			
		</div>
	<div id="three">
		</div> 
	</div>
  </body>
</html>