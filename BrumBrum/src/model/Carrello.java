package model;

import java.sql.Date;

public class Carrello {
	private String id_carrello;
	private double importo_totale; 
	
	public String getId_carrello() {
		return id_carrello;
	}
	public void setId_carrello(String id_carrello) {
		this.id_carrello = id_carrello;
	}
	public double getImporto_totale() {
		return importo_totale;
	}
	public void setImporto_totale(double importo_totale) {
		this.importo_totale = importo_totale;
	}

	@Override
	public String toString() {
		return "Carrello [id_carrello=" + id_carrello + ", importo_totale=" + importo_totale + "]";
	}
	public Carrello(String id_carrello, double importo_totale) {
		super();
		this.id_carrello = id_carrello;
		this.importo_totale = importo_totale;
	}

	

}
