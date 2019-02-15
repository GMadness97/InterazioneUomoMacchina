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
	
	public Aggiornamento getLastItem() {
		return lista.get((lista.size()-1));
	}
	
	public Aggiornamento deleteOrario(int i) {
		return lista.remove(i);
	}
	public ArrayList<Aggiornamento> getLista(){
		return lista;
	}
	
	public boolean isEmptyLista() {
		return lista.isEmpty();
	}
	
	public int getSize() {
		return lista.size();
	}
}
