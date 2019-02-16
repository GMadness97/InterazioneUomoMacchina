package model;

import java.util.*;

public class ListPercorsi {

	List<Percorso> percorsi;
	
	public ListPercorsi(){
		percorsi = new ArrayList<Percorso>();
	}
	
	public ListPercorsi(ArrayList<Percorso> percorsi){
		this.percorsi = percorsi;
	}
	
	public void doSave(Percorso percorso){
		percorsi.add(percorso);
	}
	
	public Percorso doRetrieve(String partenza, String arrivo){
		for(Percorso p : percorsi){
			if(p.getPartenza().equalsIgnoreCase(partenza) && p.getArrivo().equalsIgnoreCase(arrivo))
				return p;
		}
		return null;
	}
}
