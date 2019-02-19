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

@WebServlet("/AddAggiornamento")
public class AddAggiornamenti extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String dispatches = "/aggiornamenti.jsp";
		
		HttpSession session = request.getSession();
		
		if(session != null) {
			ListAggiornamenti aggiornamenti = (ListAggiornamenti) session.getAttribute("aggiornamenti");
			
			Aggiornamento agg = new Aggiornamento();
			if(aggiornamenti.isEmptyLista() != true) {
			   agg.setNumAvviso((aggiornamenti.getLastItem().getNumAvviso()+1));
			}
			else {
				agg.setNumAvviso(0);
			}
			

			agg.setCompagnia(request.getParameter("compAvv"));
			agg.setAvviso(request.getParameter("avviso"));
			agg.setVerificato(Boolean.parseBoolean(request.getParameter("verificato")));
			
			aggiornamenti.addItem(agg);
			aggiornamenti.getLastItem().setVerificato((Boolean)session.getAttribute("isTrasporti"));

			request.getSession().setAttribute("aggiornamenti", aggiornamenti);

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
