package model;

import java.time.LocalTime;
import java.util.*;

public class ListPercorsi {

	private static List<Percorso> percorsi;
	
	static{
		percorsi = new ArrayList<Percorso>();
		percorsi.add(new Percorso("Mario Rossi", "La tua posizione", "Lancusi", "CSTP", "10:30", "15", 3.8, "img\\Percorso.PNG"));
		percorsi.add(new Percorso("Marco Verdi", "La tua posizione", "Lancusi", "SITA", "10:30", "25", 3.5, "img\\Percorso.PNG"));
		percorsi.add(new Percorso("Mario Rossi", "via Ferraris Galileo", "Fisciano", "SITA", "9:20", "55", 4.2, "img\\Completo.png"));
	}
	
	public ListPercorsi(){
	}
	
	public void doSave(Percorso percorso){
		percorsi.add(percorso);
	}
	
	public ArrayList<Percorso> doRetrieve(String partenza, String arrivo){
		ArrayList<Percorso> lista = new ArrayList<Percorso>();
		for(Percorso p : percorsi){
			if(p.getPartenza().trim().equalsIgnoreCase(partenza.trim()) && p.getArrivo().trim().equalsIgnoreCase(arrivo.trim()))
				lista.add(p);
		}
		return lista;
	}
	
	public Percorso doRetrieveById(int id){
		for(Percorso p : percorsi){
			if(p.getId() == id)
				return p;
		}
		return null;
	}
}
