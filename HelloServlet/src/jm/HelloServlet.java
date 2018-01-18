package jm;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet
{
	//http 요청을 처리하기 위한 메서드 작성
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException 
	{
		//응답할 컨텐츠 유형 정의
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		out.print("<!DOCTYPE html>");
		out.print("<html lang='ko'>");
		out.print("<head>");
		out.print("<title>Hello Servlet</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h1>Hello Servlet</h1>");
		out.print("<h1>ㅎㅇㅎㅇㅎㅇㅎㅇ</h1>");
		out.print("</body>");
		out.print("</html>");
		
		
	}
}
