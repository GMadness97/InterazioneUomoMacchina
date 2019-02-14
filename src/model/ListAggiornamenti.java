package model;

import java.util.ArrayList;

public class ListAggiornamenti {

	private ArrayList<Aggiornamento> lista;
	
	public ListAggiornamenti(ArrayList<Aggiornamento> lista) {
		this.lista = lista;
	}
	
	public ListAggiornamenti() {
		lista = new ArrayList<Aggiornamento>();
	}
	
	public void addItem(Aggiornamento agg) {
		lista.add(agg);
	}
	
	public Aggiornamento getItem(int i) {
		return lista.get(i);
	}
	
	public Aggiornamento deleteOrario(int i) {
		return lista.remove(i);
	}
	
	public boolean isEmptyLista() {
		return lista.isEmpty();
	}
	
	public int getSize() {
		return lista.size();
	}
}
