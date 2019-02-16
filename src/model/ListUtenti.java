package model;

import java.util.ArrayList;
import java.util.List;

public class ListUtenti {

	List<Utente> utenti;
	
	public ListUtenti(){
		utenti = new ArrayList<Utente>();
	}
	
	public ListUtenti(ArrayList<Utente> utenti){
		this.utenti = utenti;
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
