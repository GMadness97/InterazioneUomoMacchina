package model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ListUtenti {

	private static List<Utente> utenti;
	
	static {
		utenti = new ArrayList<Utente>();
		utenti.add(new Utente("Mario", "Rossi", new Date(1980, 12, 12), "uno@due.it", "Password1", true));
		utenti.add(new Utente("Marco", "Bianchi", new Date(1995, 5, 20), "due@tre.it", "Password1", false));
		utenti.add(new Utente("Giovanni", "Verdi", new Date(1998, 3, 18), "tre@quattro.it", "Password1", false));
	}
	
	public boolean isEmpty(){
		return utenti.isEmpty();
	}
	
	public void doSave(Utente utente){ 
		utenti.add(utente);
	}
	
	public Utente doRetrieve(String email){
		for(Utente u : utenti){
			if(u.getEmail().equalsIgnoreCase(email))
				return u;
		}
		return null;
	}
	
	public Utente validate(String email, String password){
		for(Utente u : utenti){
			if(u.getEmail().equalsIgnoreCase(email) && u.getPassword().equals(password))
				return u;
		}
		return null;
	}
	
	public boolean existUser(String email){
		for(Utente u : utenti){
			if(u.getEmail().equalsIgnoreCase(email))
				return true;
		}
		return false;
	}
	
	public void doDelete(String email){
		for(Utente u : utenti){
			if(u.getEmail().equalsIgnoreCase(email))
				utenti.remove(u);
		}
	}
	
	public List<Utente> doRetrieveAll(){
		return utenti;
	}
}
