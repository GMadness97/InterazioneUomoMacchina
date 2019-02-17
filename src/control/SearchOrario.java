package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ListOrari;
import model.Orario;

@WebServlet("/SearchOrario")
public class SearchOrario extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String dispatches = "/orariCorse.jsp";
		HttpSession session = request.getSession();
		
		if(session != null) {
			ListOrari orari = (ListOrari)session.getAttribute("orari");
			ListOrari orariSel = new ListOrari();
			Orario orarioX = (Orario)session.getAttribute("orarioX");
			orari.addItem(orarioX);
			
			String partenza = request.getParameter("partenzaSel");
			String arrivo = request.getParameter("arrivoSel");
			String giorno = request.getParameter("giornoSel");
			
			for(int i = 0;i<orari.getSize();i++) {
				if(orari.getItem(i).getPartenza().contains(partenza)) {
					if(orari.getItem(i).getArrivo().contains(arrivo)) {
						if(orari.getItem(i).getGiorno().contains(giorno) || giorno.equals("Settimanale")) {
							orariSel.addItem(orari.getItem(i));
						}
					}
				}
			}
			
			request.getSession().setAttribute("orariSelect", orariSel);
			
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
