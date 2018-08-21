<%--
  Created by IntelliJ IDEA.
  User: Luo_0412
  Date: 2017/4/9
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@page import="hibernatesession.HibernateSessionFactory"%>
<%@page import="model.Info"%>
<%@page import="util.UtilMethod"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>HTML5 Page Title</title>

    <link href="https://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container" style="margin-top: 20px;">

    <%
        int pageNo=1; // 当前第几页
        int count = UtilMethod.getCount(); // 总数
        int pageSize = 4;//每页数据
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

    <form name="form1" method="post" action="index.jsp" >

        <table class="table table-bordered">
            <tr>
                <th>编号</th>
                <th>名字</th>
                <th>密码</th>
                <th colspan="2">操作</th>
            </tr>
            <%
                while (iterator.hasNext()) {
                    Info info = (Info) iterator.next();
            %>
            <tr>
                <td><%=info.getId() %></td>
                <td><%=info.getName() %></td>
                <td><%=info.getPass() %></td>
                <td><a href="update-info.jsp?id=<%=info.getId() %>">更新</a></td>
                <td><a href="/DelInfoServlet?id=<%=info.getId() %>" onclick="return confirm('是否确认删除？')">删除</a></td>
            </tr>

            <%
                }%>
            <tr ><td colspan="3">共${pageCount}页，当前第${pageNo }页<a href="index.jsp?pageSize=1" >首页</a>
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
                <button type="submit">跳转</button></td>
                <td colspan="2"><a href="add-info.jsp">添加用户</a></td>
            </tr>
        </table>
    </form>

    <%HibernateSessionFactory.closeSession(); %>


</div><!-- ./container -->

<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>
</html>
