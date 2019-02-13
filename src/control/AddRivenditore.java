package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ListRivenditori;
import model.Rivenditore;

@WebServlet("/AddRivenditore")
public class AddRivenditore extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doPost(request,response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		HttpSession session = request.getSession();
		
		Rivenditore rivenditore = new Rivenditore();
		rivenditore.setCompagniaRiv(request.getParameter("compagniaRiv"));
		rivenditore.setLuogoRiv(request.getParameter("luogoRiv"));
		
		if(session!=null) {
			ListRivenditori lista = (ListRivenditori) session.getAttribute("rivenditori");
			lista.addItem(rivenditore);
			request.getSession().setAttribute("rivenditori", lista);
			for(int i = 0; i<lista.getSize();i++)
				System.out.println(lista.getItem(i).toString());
		}
		
		RequestDispatcher rd=  getServletContext().getRequestDispatcher("/AddInfo.jsp");
		if(rd!=null) {
			rd.forward(request, response);
		}
	}

}
