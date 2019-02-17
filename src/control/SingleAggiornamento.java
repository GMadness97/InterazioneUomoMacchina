package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Aggiornamento;
import model.ListAggiornamenti;

@WebServlet("/SingleAgg")
public class SingleAggiornamento extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String dispatches = "/singoloAgg.jsp";
		
		HttpSession session = request.getSession();
		
		if(session != null) {
			
			ListAggiornamenti aggiornamenti = (ListAggiornamenti) session.getAttribute("aggiornamenti");
			
			Aggiornamento singolo = aggiornamenti.getItem(Integer.parseInt(request.getParameter("param1")));
			
			request.getSession().setAttribute("aggSingl", singolo);
			
		}
		else {
			dispatches = "/index.jsp";
		}
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(dispatches);
		if(rd != null) {
			rd.forward(request, response);
		}
	}
}
