package model;

import java.math.BigDecimal;

public class Pagamento {
	
	private String id_pagamento;
	private String metodo;
	private String id_ordine;
	private double importoTotale;

	public Pagamento(String id_pagamento, String metodo, String id_ordine, double importoTotale) {
		this.id_pagamento = id_pagamento;
		this.importoTotale = importoTotale;
		this.metodo = metodo;
		this.id_ordine = id_ordine;
	}
	
	public String getId_pagamento() {
		return id_pagamento;
	}
	public void setId_pagamento(String id_pagamento) {
		this.id_pagamento = id_pagamento;
	}
	public double getImportoTotale() {
		return importoTotale;
	}
	public void setImportoTotale(double importoTotale) {
		this.importoTotale = importoTotale;
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
		return "Pagamento [id_pagamento=" + id_pagamento + ", metodo=" + metodo + ", id_ordine=" + id_ordine
				+ ", importoTotale=" + importoTotale + "]";
	}
	
	
	

}
