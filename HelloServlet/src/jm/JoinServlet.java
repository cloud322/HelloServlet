package jm;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Member;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/JoinServlet.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException 
	{
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String job = req.getParameter("job");
		String email = req.getParameter("email");
		
		Member mem = new Member();
		mem.setId(id);
		mem.setName(name);
		mem.setJob(job);
		mem.setEmail(email);
		
		req.setAttribute("mem", mem);
		RequestDispatcher view =  req.getRequestDispatcher("/joinResult.jsp");
		view.forward(req, res);
	}

}
