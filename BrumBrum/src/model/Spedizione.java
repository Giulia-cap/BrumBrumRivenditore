package model;

public class Spedizione {
	
	private String id_spedizione;
	private String indirizzo;
	private String metodo;
	private String id_ordine;
	
	public Spedizione(String id_spedizione, String indirizzo, String metodo, String id_ordine) {
		this.id_spedizione = id_spedizione;
		this.indirizzo = indirizzo;
		this.metodo = metodo;
		this.id_ordine = id_ordine;
	}
	
	public String getId_spedizione() {
		return id_spedizione;
	}
	public void setId_spedizione(String id_spedizione) {
		this.id_spedizione = id_spedizione;
	}
	public String getIndirizzo() {
		return indirizzo;
	}
	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}
	public String getMetodo() {
		return metodo;
	}
	public void setMetodo(String metodo) {
		this.metodo = metodo;
	}
	public String getId_ordine() {
		return id_ordine;
	}
	public void setId_ordine(String id_ordine) {
		this.id_ordine = id_ordine;
	}
	
	@Override
	public String toString() {
		return "Spedizione [id_spedizione=" + id_spedizione + ", indirizzo=" + indirizzo + ", metodo=" + metodo
				+ ", id_ordine=" + id_ordine + "]";
	}
	
	

}
