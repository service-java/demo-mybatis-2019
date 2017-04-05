<%@page contentType="text/html"%>
<%@page pageEncoding="GB2312"%>
<html>
    <head><title>演示 out 对象缓冲区的操作</title></head>
    <body>
        <%
            out.println("JSP程序设计<br>");
            out.clearBuffer();//clearBuffer()方法将缓冲区中的数据清空了
            out.println("清华出版社<br>");
            out.flush();//先把缓冲区原有数据写到客户端上，再清空缓冲区里的数据 
            out.println("康牧编著<br>");
            out.println("==========<br>");
            out.println("剩余缓冲区大小：" + 
                          out.getRemaining() + " bytes<br>");
            out.println("预设缓冲区大小：" + 
                          out.getBufferSize() + " bytes<br>");
            out.println("AutoFlush：" + out.isAutoFlush());
            out.close();//关闭输出流，从而可以强制终止当前的剩余部分向浏览器输出
            out.print("hello");
            %>

        %>
    </body>
</html>
