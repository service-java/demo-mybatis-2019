package com;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 继承HttpServlet抽象类
public class MyServlet extends HttpServlet {
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	// 重写或覆盖方法
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 获取HTTP请求信息
		// String myName = request.getParameter("myName");

		// 生成HTTP响应
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		out.println("保护环境！爱护地球！");
	}
}