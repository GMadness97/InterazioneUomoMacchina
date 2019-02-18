package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ListPercorsi;
import model.Percorso;

@WebServlet("/RicercaPercorso")
public class RicercaPercorso extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		
		String partenza = request.getParameter("partenza");
		String arrivo = request.getParameter("arrivo");
		
		System.out.println(partenza + arrivo);
		
		ListPercorsi percorsi = new ListPercorsi();
		ArrayList<Percorso> trovati = percorsi.doRetrieve(partenza, arrivo);
		
		
		request.getSession().setAttribute("trovati", trovati);
		
		RequestDispatcher rd=request.getRequestDispatcher("VisualizzaPercorsi.jsp");  
	    rd.forward(request,response);
		
	}
}
