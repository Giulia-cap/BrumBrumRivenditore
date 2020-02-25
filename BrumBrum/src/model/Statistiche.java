package model;

import java.util.Arrays;
import java.util.List;

public class Statistiche {
	public int utentiRegistrati;
	public int ordiniEffettuati;
	public int questoMese;
	public int totaleIncassi;
	public List<ComplexAutomobile> autoAcquistate;
	public List<ComplexAutomobile> autoNoleggiate;
	public List<ComplexFeedback> listaFeedback;
	public int[] storicoNumerAutoVendute;
	public int[] storicoIncassoMese;
	
	
	
	public int getUtentiRegistrati() {
		return utentiRegistrati;
	}
	public void setUtentiRegistrati(int utentiRegistrati) {
		this.utentiRegistrati = utentiRegistrati;
	}
	public int getOrdiniEffettuati() {
		return ordiniEffettuati;
	}
	public void setOrdiniEffettuati(int ordiniEffettuati) {
		this.ordiniEffettuati = ordiniEffettuati;
	}
	public int getQuestoMese() {
		return questoMese;
	}
	public void setQuestoMese(int questaSettimana) {
		this.questoMese = questaSettimana;
	}
	public int getTotaleIncassi() {
		return totaleIncassi;
	}
	public void setTotaleIncassi(int totaleIncassi) {
		this.totaleIncassi = totaleIncassi;
	}
	public List<ComplexAutomobile> getAutoAcquistate() {
		return autoAcquistate;
	}
	public void setAutoAcquistate(List<ComplexAutomobile> autoAcquistate) {
		this.autoAcquistate = autoAcquistate;
	}
	public List<ComplexAutomobile> getAutoNoleggiate() {
		return autoNoleggiate;
	}
	public void setAutoNoleggiate(List<ComplexAutomobile> autoNoleggiate) {
		this.autoNoleggiate = autoNoleggiate;
	}
	public List<ComplexFeedback> getListaFeedback() {
		return listaFeedback;
	}
	public void setListaFeedback(List<ComplexFeedback> listaFeedback) {
		this.listaFeedback = listaFeedback;
	}
	public int[] getStoricoNumerAutoVendute() {
		return storicoNumerAutoVendute;
	}
	public void setStoricoNumerAutoVendute(int[] storicoNumerAutoVendute) {
		this.storicoNumerAutoVendute = storicoNumerAutoVendute;
	}
	public int[] getStoricoIncassoMese() {
		return storicoIncassoMese;
	}
	public void setStoricoIncassoMese(int[] storicoIncassoMese) {
		this.storicoIncassoMese = storicoIncassoMese;
	}
	public Statistiche(int utentiRegistrati, int ordiniEffettuati, int questoMese, int totaleIncassi,
			List<ComplexAutomobile> autoAcquistate, List<ComplexAutomobile> autoNoleggiate,
			List<ComplexFeedback> listaFeedback, int[] storicoNumerAutoVendute, int[] storicoIncassoMese) {
		super();
		this.utentiRegistrati = utentiRegistrati;
		this.ordiniEffettuati = ordiniEffettuati;
		this.questoMese = questoMese;
		this.totaleIncassi = totaleIncassi;
		this.autoAcquistate = autoAcquistate;
		this.autoNoleggiate = autoNoleggiate;
		this.listaFeedback = listaFeedback;
		this.storicoNumerAutoVendute = storicoNumerAutoVendute;
		this.storicoIncassoMese = storicoIncassoMese;
	}
	@Override
	public String toString() {
		return "Statistiche [utentiRegistrati=" + utentiRegistrati + ", ordiniEffettuati=" + ordiniEffettuati
				+ ", questoMese=" + questoMese + ", totaleIncassi=" + totaleIncassi + ", autoAcquistate="
				+ autoAcquistate + ", autoNoleggiate=" + autoNoleggiate + ", listaFeedback=" + listaFeedback
				+ ", storicoNumerAutoVendute=" + Arrays.toString(storicoNumerAutoVendute) + ", storicoIncassoMese="
				+ Arrays.toString(storicoIncassoMese) + "]";
	}
	
	

	
}
