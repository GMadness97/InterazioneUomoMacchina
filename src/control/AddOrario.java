package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ListOrari;
import model.Orario;

@WebServlet("/AddOrario")
public class AddOrario extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doPost(request,response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		HttpSession session = request.getSession();
		
		Orario orario = new Orario();
		orario.setPartenza(request.getParameter("partenza"));
		orario.setArrivo(request.getParameter("arrivo"));
		orario.setOrario(request.getParameter("orario"));
		orario.setGiorno(request.getParameter("giorno"));
		orario.setCompagnia(request.getParameter("compagnia"));
		orario.setPrezzo(request.getParameter("prezzo"));
		orario.setDurata(request.getParameter("durata"));
		ListOrari orariSel = (ListOrari)session.getAttribute("orariSelect");
		
		if(session!=null) {
			ListOrari lista = (ListOrari) session.getAttribute("orari");
			lista.addItem(orario);
			orariSel.addItem(orario);
			request.getSession().setAttribute("orariSelect", orariSel);
			request.getSession().setAttribute("orario", lista);
			for(int i = 0; i<lista.getSize();i++)
				System.out.println(lista.getItem(i).toString());
		}
		
		RequestDispatcher rd=  getServletContext().getRequestDispatcher("/orariCorse.jsp");
		if(rd!=null) {
			rd.forward(request, response);
		}
	}
}
