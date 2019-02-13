package model;

public class Rivenditore {
	
	
	public Rivenditore(String compagniaRiv, String luogoRiv) {
		super();
		this.compagniaRiv = compagniaRiv;
		this.luogoRiv = luogoRiv;
	}	
	
	
	public String getCompagniaRiv() {
		return compagniaRiv;
	}
	public void setCompagniaRiv(String compagniaRiv) {
		this.compagniaRiv = compagniaRiv;
	}
	public String getLuogoRiv() {
		return luogoRiv;
	}
	public void setLuogoRiv(String luogoRiv) {
		this.luogoRiv = luogoRiv;
	}


	private String compagniaRiv;
	private String luogoRiv;
}
