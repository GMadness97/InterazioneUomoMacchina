package model;

import java.time.LocalTime;

public class Percorso {

	private String creatore;
	private String partenza;
	private String arrivo;
	private String compagnia;
	private LocalTime oraPartenza;
	private LocalTime durata;
	private float valutazione;
	
	public Percorso(){
		
	}
	
	public Percorso(String creatore, String partenza, String arrivo, String compagnia, LocalTime oraPartenza, LocalTime durata, float valutazione){
		this.creatore = creatore;
		this.partenza = partenza;
		this.arrivo = arrivo;
		this.compagnia = compagnia;
		this.oraPartenza = oraPartenza;
		this.durata = durata;
		this.valutazione = valutazione;
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

	public String getCompagnia() {
		return compagnia;
	}

	public void setCompagnia(String compagnia) {
		this.compagnia = compagnia;
	}

	public LocalTime getOraPartenza() {
		return oraPartenza;
	}

	public void setOraPartenza(LocalTime oraPartenza) {
		this.oraPartenza = oraPartenza;
	}

	public LocalTime getDurata() {
		return durata;
	}

	public void setDurata(LocalTime durata) {
		this.durata = durata;
	}

	public float getValutazione() {
		return valutazione;
	}

	public void setValutazione(float valutazione) {
		this.valutazione = valutazione;
	}
	
}
