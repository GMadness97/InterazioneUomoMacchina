package model;

public class Aggiornamento {
	
	public Aggiornamento() {
		
	}
	
	public Aggiornamento(String compagnia, String avviso, int numAvviso) {
		super();
		this.compagnia = compagnia;
		this.avviso = avviso;
		this.numAvviso = numAvviso;
	}
	
	public String getCompagnia() {
		return compagnia;
	}
	public void setCompagnia(String compagnia) {
		this.compagnia = compagnia;
	}
	public String getAvviso() {
		return avviso;
	}
	public void setAvviso(String avviso) {
		this.avviso = avviso;
	}
	public int getNumAvviso() {
		return numAvviso;
	}
	public void setNumAvviso(int numAvviso) {
		this.numAvviso = numAvviso;
	}
	
	@Override
	public String toString() {
		return "Aggiornamento [numAvviso =" + numAvviso +" compagnia=" + compagnia + ", avviso=" + avviso + "]";
	}

	private String compagnia;
	private String avviso;
	private int numAvviso;
}
