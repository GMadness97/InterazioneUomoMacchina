package model;

import java.util.ArrayList;

public class ListOrari {

	private ArrayList<Orario> lista;
	
	public ListOrari() {
		lista = new ArrayList<Orario>();
	}

	public ListOrari(ArrayList<Orario> lista) {
		this.lista = lista;
	}
	
	public void addItem(Orario orario) {
		lista.add(orario);
	}
	
	public Orario getItem(int i) {
		return lista.get(i);
	}
	
	public Orario deleteOrario(int i) {
		return lista.remove(i);
	}
	
	public boolean isEmptyLista() {
		return lista.isEmpty();
	}
	
}
