<%@ page contentType="text/html;charset=utf-8"%>
<% int able=1; %>
<html>
<body>
<table>
<% if(able==1){%>
<tr><td>你是会员</td></tr>
<% }
       else if(able==2){
  	%>
   <tr><td>你是超级管理员</td></tr>
   <% } %>
 </table>
</body>
</html>
