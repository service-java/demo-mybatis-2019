<%@ page contentType="text/html;charset=utf-8" %>
<%!
    int num=0;                      		
    synchronized void add(){     	
       num++;
    }
%>
<% add(); %>                      		
<html>
<body>
	<h1>被访问了<%=num%>次</h1>
</body>
</html>