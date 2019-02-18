package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ListPercorsi;
import model.Percorso;

@WebServlet("/VisualizzaPercorso")
public class VisualizzaPercorso extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		int id = Integer.parseInt(request.getParameter("id"));
		
		ListPercorsi percorsi = new ListPercorsi();
		Percorso percorso = percorsi.doRetrieveById(id);
		
		request.getSession().setAttribute("percorso", percorso);
		
		RequestDispatcher rd=request.getRequestDispatcher("VisualizzaPercorso.jsp");  
	    rd.forward(request,response);
	}
}
