package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ListUtenti;

@WebServlet("/InserisciPercorso")
public class InserisciPercorso extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();
		String partenza = request.getParameter("partenza");
		String arrivo = request.getParameter("arrivo");
		String durataTotale = request.getParameter("durataTotale");
		
		System.out.println(partenza + arrivo + durataTotale);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();
		String partenza = request.getParameter("partenza");
		String arrivo = request.getParameter("arrivo");
		String durataTotale = request.getParameter("durataTotale");
		
		System.out.println(partenza + arrivo + durataTotale);
		
		
	}

}
