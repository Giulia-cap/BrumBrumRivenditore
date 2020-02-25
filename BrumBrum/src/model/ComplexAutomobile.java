package model;

public class ComplexAutomobile {

	private String targa;
	private String marca;
	private String modello;
	private String categoria;
	private String colore;
	private String km;
	private String alimentazione;
	private String cambio;
	private String immagine;
	private String prezzovendita;
	private String prezzonoleggio;
	private String disponibilita;
	private String data;
	public String getDisponibilita() {
		return disponibilita;
	}


	public String getData() {
		return data;
	}


	public void setData(String data) {
		this.data = data;
	}


	public void setDisponibilita(String disponibilita) {
		this.disponibilita = disponibilita;
	}


	public String getTarga() {
		return targa;
	}


	public void setTarga(String targa) {
		this.targa = targa;
	}


	public String getMarca() {
		return marca;
	}


	public void setMarca(String marca) {
		this.marca = marca;
	}


	public String getCategoria() {
		return categoria;
	}


	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}


	public String getColore() {
		return colore;
	}


	public void setColore(String colore) {
		this.colore = colore;
	}


	public String getKm() {
		return km;
	}


	public void setKm(String km) {
		this.km = km;
	}


	public String getAlimentazione() {
		return alimentazione;
	}


	public void setAlimentazione(String alimentazione) {
		this.alimentazione = alimentazione;
	}


	public String getCambio() {
		return cambio;
	}


	public void setCambio(String cambio) {
		this.cambio = cambio;
	}


	public String getImmagine() {
		return immagine;
	}


	public void setImmagine(String immagine) {
		this.immagine = immagine;
	}

	public String getModello() {
		return modello;
	}


	public void setModello(String modello) {
		this.modello = modello;
	}

	public String getPrezzovendita() {
		return prezzovendita;
	}


	public void setPrezzovendita(String prezzovendita) {
		this.prezzovendita = prezzovendita;
	}


	public String getPrezzonoleggio() {
		return prezzonoleggio;
	}


	public void setPrezzonoleggio(String prezzonoleggio) {
		this.prezzonoleggio = prezzonoleggio;
	}

	public ComplexAutomobile(String targa, String marca, String modello, String categoria, String colore, String km,
			String alimentazione, String cambio, String immagine, String prezzovendita, String prezzonoleggio,String disponibilita,String data) {
		super();
		this.targa = targa;
		this.marca = marca;
		this.modello = modello;
		this.categoria = categoria;
		this.colore = colore;
		this.km = km;
		this.alimentazione = alimentazione;
		this.cambio = cambio;
		this.immagine = immagine;
		this.prezzovendita = prezzovendita;
		this.prezzonoleggio = prezzonoleggio;
		this.disponibilita = disponibilita;
		this.data=data;
	}


	@Override
	public String toString() {
		return "ComplexAutomobile [targa=" + targa + ", marca=" + marca + ", modello=" + modello + ", categoria="
				+ categoria + ", colore=" + colore + ", km=" + km + ", alimentazione=" + alimentazione + ", cambio="
				+ cambio + ", immagine=" + immagine + ", prezzovendita=" + prezzovendita + ", prezzonoleggio="
				+ prezzonoleggio + ", disponibilita=" + disponibilita + ", data=" + data + "]";
	}
	
}
