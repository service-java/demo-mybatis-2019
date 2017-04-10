<%--
  Created by IntelliJ IDEA.
  User: Luo_0412
  Date: 2017/4/10
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>HTML5 Page Title</title>

    <link href="https://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container" style="margin-top: 20px;">

    <form class="form" action="/AddInfoServlet">

        <div class="form-group">
            <input class="form-control" type="text" placeholder="姓名" name = "name">
        </div>

        <div class="form-group">
            <input class="form-control" type="password" placeholder="密码" name = "pass">
        </div>

        <div class="form-group">
            <input class="form-control" type="reset" value = "重置">
            <input class="form-control" type="submit" value = "提交">
        </div>

        <div class="form-group">
            <a href="index.jsp">返回</a>
        </div>

    </form>

</div><!-- ./container -->

<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>
</html>
