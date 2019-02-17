package control;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.*;

/**
 * Servlet implementation class LoginControl
 */
@WebServlet("/LoginControl")
public class LoginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public LoginControl() {
        super();
     
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		boolean isTrasporti;
		
		ListUtenti utenti = new ListUtenti();
		if(utenti.validate(email, password) != null){
			isTrasporti = utenti.doRetrieve(email).isGestoreTrasporti();
			request.getSession().setAttribute("isTrasporti", isTrasporti);
			request.getSession().setAttribute("isLogged", true);
	        
			if(isTrasporti){
				RequestDispatcher rd=request.getRequestDispatcher(".jsp");	//gestore trasporti
			    rd.forward(request,response);
			} else {
				RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
			    rd.forward(request,response);
			}
		} else {
			out.print("<p style=\"color:red\">Spiacente E-Mail o password invalidi, riprova</p><br>");  
			out.print("<p style=\"color:blue\">Nuovo utente? <a href=\"registrazione.jsp\">Registrati subito!</a> </br></p>");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
			rd.include(request,response);  
		}

		out.close();  
	}
		
}
