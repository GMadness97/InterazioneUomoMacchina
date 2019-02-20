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

@WebServlet("/ValutaPercorso")
public class ValutaPercorso extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
//	ListPercorsi percorsi = new ListPercorsi();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean isLogged;
		if(request.getSession().getAttribute("isLogged") == null){
			RequestDispatcher rd=request.getRequestDispatcher("NonLoggato.jsp");  
		    rd.forward(request,response);
		}else{
			isLogged = (Boolean) request.getSession().getAttribute("isLogged");
			if(!isLogged){
				RequestDispatcher rd=request.getRequestDispatcher("NonLoggato.jsp");  
			    rd.forward(request,response);
			} else{
				double voto = Double.parseDouble(request.getParameter("voto"));
				Percorso percorso= (Percorso) request.getSession().getAttribute("percorso");
				percorso.valuta(voto);
				
				request.getSession().removeAttribute("percorso");
				request.getSession().setAttribute("percorso", percorso);
				
				RequestDispatcher rd=request.getRequestDispatcher("VisualizzaPercorso.jsp");  
			    rd.forward(request,response);
			}
		}
	}

}
