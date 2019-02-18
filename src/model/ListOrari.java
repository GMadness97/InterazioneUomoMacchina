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
	
	public ArrayList<Orario> getLista(){
		return lista;
	} 
	public void setLista(ArrayList<Orario> lista) {
		this.lista = lista; 
	}
	
	public Orario deleteOrario(int i) {
		return lista.remove(i);
	}
	
	public boolean isEmptyLista() {
		return lista.isEmpty();
	}
	
	public int getSize() {
		return lista.size();
	}
	
	public void addWithControll(Orario orario) {
		boolean flag=false;
		for(int i=0;i<lista.size();i++) {
			if(lista.get(i).getPrezzo().equals(orario.getPrezzo()) && lista.get(i).getCompagnia().equals(orario.getCompagnia()) && lista.get(i).getDurata().equals(orario.getDurata())) {
				flag=true;
			}
		}
		if(flag==false) {
			lista.add(orario);
		}
	}
	
}
