package control;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ListUtenti;
import model.Utente;

/**
 * Servlet implementation class RegistrationControl
 */
@WebServlet("/RegistrationControl")
public class RegistrationControl extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	ListUtenti utenti = new ListUtenti();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// empty	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		System.out.println("Mi ha chiamato il bottone registrazione");
		System.out.println(request.getParameter("nome"));
		HttpSession session = request.getSession(false);

		try {
				String nome = request.getParameter("nome");
				String cognome = request.getParameter("cognome");
				String sData= request.getParameter("data_nascita");
				System.out.println(sData);
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
				Date dataNascita = formatter.parse(sData);

				String password = request.getParameter("password");
				String eMail = request.getParameter("email");					
			
				Utente newUser = new Utente();
				newUser.setNome(nome);
				newUser.setCognome(cognome);
				newUser.setEmail(eMail);
				newUser.setPassword(password);
				newUser.setDataNascita(dataNascita);
						
				if(utenti.existUser(eMail)) {
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/registrationFailed.jsp");
					dispatcher.forward(request, response);
				} else {	
					utenti.doSave(newUser);
					session.setAttribute("isLogged", true);
					session.setAttribute("isTrasporti", false);

					System.out.println("Ciao");
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/registrationSuccess.jsp");
					dispatcher.forward(request, response);
				}
				
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
				
	}
}
