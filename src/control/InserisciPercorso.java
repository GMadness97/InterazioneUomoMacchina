package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ListPercorsi;
import model.ListUtenti;
import model.Percorso;

@WebServlet("/InserisciPercorso")
public class InserisciPercorso extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();
		String partenza = request.getParameter("partenza");
		String arrivo = request.getParameter("arrivo");
		String oraPartenza = request.getParameter("oraPartenza");
		String fineTratta = request.getParameter("fineTratta");
		String compagnia = request.getParameter("compagnia");
		String durata = request.getParameter("durata");
		
		Percorso percorso = new Percorso();
		percorso.setPartenza(partenza);
		percorso.setArrivo(arrivo);
		percorso.setOraPartenza(oraPartenza);
		percorso.setCompagnia(compagnia);
		percorso.setDurata(durata);
		
		System.out.println(partenza + arrivo);
		
		ListPercorsi percorsi = new ListPercorsi();
		percorsi.doSave(percorso);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
