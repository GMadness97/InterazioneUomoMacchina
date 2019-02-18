package model;

import java.time.LocalTime;

public class Percorso {

	private static int count;
	
	private int id;
	private String creatore;
	private String partenza;
	private String arrivo;
	private String compagnia;
	private String oraPartenza;
	private String durata;
	private int numeroValutazioni;
	private double sommaValutazioni;
	
	public Percorso(){
		id = ++count;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCompagnia() {
		return compagnia;
	}

	public void setCompagnia(String compagnia) {
		this.compagnia = compagnia;
	}

	public String getDurata() {
		return durata;
	}

	public void setDurata(String durata) {
		this.durata = durata;
	}

	public Percorso(String creatore, String partenza, String arrivo, String compagnia, String oraPartenza, String durata, double valutazione){
		this.creatore = creatore;
		this.partenza = partenza;
		this.arrivo = arrivo;
		this.compagnia = compagnia;
		this.oraPartenza = oraPartenza;
		this.durata = durata;
		this.valuta(valutazione);
	}

	public String getCreatore() {
		return creatore;
	}

	public void setCreatore(String creatore) {
		this.creatore = creatore;
	}

	public String getPartenza() {
		return partenza;
	}

	public void setPartenza(String partenza) {
		this.partenza = partenza;
	}

	public String getArrivo() {
		return arrivo;
	}

	public void setArrivo(String arrivo) {
		this.arrivo = arrivo;
	}

	public String getOraPartenza() {
		return oraPartenza;
	}

	public void setOraPartenza(String oraPartenza) {
		this.oraPartenza = oraPartenza;
	}

	public double getValutazione() {
		return sommaValutazioni/numeroValutazioni;
	}

	public void valuta(double valutazione) {
		this.sommaValutazioni += valutazione;
		this.numeroValutazioni++;
	}
	
}
