package model;

import java.sql.Date;

public class Ordine {
	private String id;
	private String indirizzo; 
	private String stato;
	
	public Ordine(String id, String indirizzo, String stato) {
		this.id=id;
		this.indirizzo=indirizzo;
		this.stato=stato;

	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getIndirizzo() {
		return indirizzo;
	}
	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}
	public String getStato() {
		return stato;
	}
	public void setStato(String stato) {
		this.stato = stato;
	}
	@Override
	public String toString() {
		return "Ordine [id=" + id + ", indirizzo=" + indirizzo + ", stato=" + stato + "]";
	}
	
	

}
