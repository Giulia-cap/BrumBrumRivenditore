package model;

import java.sql.Date;

public class Utente {

	private String username;
	private String password; 
	private String email;
	private String tipo;
	private String codice_fiscale;
	private String partita_iva;
	private String nome;
	private String cognome;
	
	
	
	public Utente(String username, String password, String email, String tipo, String codice_fiscale, String partita_iva,
			String nome, String cognome) {
		this.username = username;
		this.password = password;
		this.email = email;
		this.tipo = tipo;
		this.codice_fiscale = codice_fiscale;
		this.partita_iva = partita_iva;
		this.nome = nome;
		this.cognome = cognome;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getCodice_fiscale() {
		return codice_fiscale;
	}
	public void setCodice_fiscale(String codice_fiscale) {
		this.codice_fiscale = codice_fiscale;
	}
	public String getPartita_iva() {
		return partita_iva;
	}
	public void setPartita_iva(String partita_iva) {
		this.partita_iva = partita_iva;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	
	@Override
	public String toString() {
		return "Utente [username=" + username + ", password=" + password + ", email=" + email + ", tipo=" + tipo
				+ ", codice_fiscale=" + codice_fiscale + ", partita_iva=" + partita_iva + ", nome=" + nome
				+ ", cognome=" + cognome + "]";
	}
}
