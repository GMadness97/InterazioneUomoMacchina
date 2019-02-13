package model;

public class Orario {
	
	public Orario(String partenza, String arrivo, String orario, String giorno, String compagnia, String prezzo,
			String durata) {
		super();
		this.partenza = partenza;
		this.arrivo = arrivo;
		this.orario = orario;
		this.giorno = giorno;
		this.compagnia = compagnia;
		this.prezzo = prezzo;
		this.durata = durata;
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
	public String getOrario() {
		return orario;
	}
	public void setOrario(String orario) {
		this.orario = orario;
	}
	public String getGiorno() {
		return giorno;
	}
	public void setGiorno(String giorno) {
		this.giorno = giorno;
	}
	public String getCompagnia() {
		return compagnia;
	}
	public void setCompagnia(String compagnia) {
		this.compagnia = compagnia;
	}
	public String getPrezzo() {
		return prezzo;
	}
	public void setPrezzo(String prezzo) {
		this.prezzo = prezzo;
	}
	public String getDurata() {
		return durata;
	}
	public void setDurata(String durata) {
		this.durata = durata;
	}
	

	public String toString() {
		return "Orario [partenza=" + partenza + ", arrivo=" + arrivo + ", orario=" + orario + ", giorno=" + giorno
				+ ", compagnia=" + compagnia + ", prezzo=" + prezzo + ", durata=" + durata + "]";
	}


	private String partenza;
	private String arrivo;
	private String orario;
	private String giorno;
	private String compagnia;
	private String prezzo;
	private String durata;
}
