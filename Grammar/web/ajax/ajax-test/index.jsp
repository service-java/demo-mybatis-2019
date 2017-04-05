<%@ page contentType="text/html; charset=gb2312" 
	language="java" import="java.sql.*" errorPage="" %>

<html>
<head>
	<title>搭建Ajax开发框架</title>
<script>
    var http_request = false;
    function createRequest(url) {
        http_request = false;
        if (window.XMLHttpRequest) {     // Mozilla浏览器
            http_request = new XMLHttpRequest();
            if (http_request.overrideMimeType) {
                http_request.overrideMimeType('text/xml');     //设置MIME类别
            }
        } else if (window.ActiveXObject) {     // IE浏览器
            try {
                http_request = new ActiveXObject("Msxml2.XMLHTTP");
            } catch (e) {
                try {
                    http_request = new ActiveXObject("Microsoft.XMLHTTP");
               } catch (e) {}
            }
        }
        if (!http_request) {
            alert("不能创建XMLHttpRequest对象实例！");
            return false;
        }
        http_request.onreadystatechange = getResult;     //调用返回结果处理函数
        http_request.open('POST', url, true);
        http_request.send();

    }
    
	//返回结果处理函数
    function getResult() {
        if (http_request.readyState == 4) {     // 判断请求状态
            if (http_request.status == 200) {     // 请求成功，开始处理返回结果
                answer.innerHTML = http_request.responseText;
            } else {     //请求页面有错误
                alert("您所请求的页面有错误！");
            }
        }
    }
</script>
</head>
<body>

这是一生中难得的机会。
<a href="#" onClick="createRequest('target.htm')">汉译英</a>
<hr>
<div id="answer"></div>

</body>
</html>
