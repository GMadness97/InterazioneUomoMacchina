package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ListOrari;
import model.Orario;


public class AddOrario extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doPost(request,response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		HttpSession session = request.getSession();
		
		Orario orario = new Orario();
		orario.setArrivo(request.getParameter("partenza"));
		orario.setPartenza(request.getParameter("partenze"));
		orario.setOrario(request.getParameter("orario"));
		orario.setGiorno(request.getParameter("giorno"));
		orario.setCompagnia(request.getParameter("compagnia"));
		orario.setPrezzo(request.getParameter("prezzo"));
		orario.setDurata(request.getParameter("durata"));
		
		if(session!=null) {
			ListOrari lista = (ListOrari) session.getAttribute("orari");
			lista.addItem(orario);
			request.getSession().setAttribute("orario", lista);
		}
		
		RequestDispatcher rd=  getServletContext().getRequestDispatcher("/AddInfo.jsp");
		if(rd!=null) {
			rd.forward(request, response);
		}
	}
}
