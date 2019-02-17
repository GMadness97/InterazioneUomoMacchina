package model;

import java.util.Date;

public class Utente {

	private String nome;
	private String cognome;
	private Date dataNascita;
	private String email;
	private String password;
	private boolean gestoreTrasporti;
	
	public Utente(){
		
	}
	
	public Utente(String nome, String cognome, Date dataNascita, String email, String password, boolean gestoreTrasporti){
		this.nome = nome;
		this.cognome = cognome;
		this.dataNascita = dataNascita;
		this.email = email;
		this.password = password;
		this.gestoreTrasporti = gestoreTrasporti;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public Date getDataNascita() {
		return dataNascita;
	}

	public void setDataNascita(Date dataNascita) {
		this.dataNascita = dataNascita;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isGestoreTrasporti() {
		return gestoreTrasporti;
	}

	public void setGestoreTrasporti(boolean gestoreTrasporti) {
		this.gestoreTrasporti = gestoreTrasporti;
	}
	
}
