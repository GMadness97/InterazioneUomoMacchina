package model;

import java.util.ArrayList;

public class ListRivenditori {

	
	public ListRivenditori() {
		lista = new ArrayList<Rivenditore>();
	}
	
	public ListRivenditori(ArrayList<Rivenditore> lista) {
		this.lista = lista;
	}
	
	public void addItem(Rivenditore riv) {
		lista.add(riv);
	}
	
	public Rivenditore getItem(int i) {
		return lista.get(i);
	}
	
	public Rivenditore removeItem(int i) {
		return lista.remove(i);
	}
	
	public boolean isEmpty() {
		return lista.isEmpty();
	}

	private ArrayList<Rivenditore> lista;
	
}
