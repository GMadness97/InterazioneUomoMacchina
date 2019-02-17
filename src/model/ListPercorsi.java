package model;

import java.util.*;

public class ListPercorsi {

	private static List<Percorso> percorsi;
	
	static{
		
	}
	
	public ListPercorsi(){
	}
	
	public void doSave(Percorso percorso){
		percorsi.add(percorso);
	}
	
	public ArrayList<Percorso> doRetrieve(String partenza, String arrivo){
		ArrayList<Percorso> lista = new ArrayList<Percorso>();
		for(Percorso p : percorsi){
			if(p.getPartenza().equalsIgnoreCase(partenza) && p.getArrivo().equalsIgnoreCase(arrivo))
				lista.add(p);
		}
		return lista;
	}
}
