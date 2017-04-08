#### 简单App

* 上传
    [upload-demo](http://www.runoob.com/jsp/jsp-file-uploading.html)

```
// 需要这2个jar
commons-fileupload-1.3.2.jar
commons-io-2.5.jar

主要是Servlet/UploadServlet.java文件

    // 映射
    <servlet>
        <servlet-name>UploadServlet</servlet-name>
        <servlet-class>servlet.UploadServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>UploadServlet</servlet-name>
        <url-pattern>/uploadServlet</url-pattern>
    </servlet-mapping>
    
    // 表单
   <form method="post" action="/Grammar/uploadServlet" enctype="multipart/form-data">
   
1. web.xml 与 Servlet更新后一定注意刷新或重启 tomcat
2. 路径问题

// jspSmartUpload.jar 几乎不更新,可摒弃

```

* 基础

```
// 另存为文档
暂时只在ie浏览器中可行 ?


```

* 图表处理

```
// jspfreechart.jar实现


```

* 邮件

```

```