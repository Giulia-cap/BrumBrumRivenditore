
import java.awt.geom.GeneralPath;
import java.sql.Date;

import model.Automobile;
import model.Carrello;
import model.Utente;
import model.Ordine;
import model.Pagamento;
import model.Spedizione;
import persistence.DAOFactory;
import persistence.DataSource;
import persistenceDao.AutomobileDao;
import persistenceDao.CarrelloDao;
import persistenceDao.UtenteDao;
import persistenceDao.OrdineDao;
import persistenceDao.PagamentoDao;
import persistenceDao.SpedizioneDao;

public class mainProva {
	

	public static void main(String args[]) {
		try {
			Class.forName("org.postgresql.Driver").newInstance();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		
//		FeedbackDao feedbackDao=factory.getFeedbackDAO();
//		Feedback f=new Feedback();
//		f.setId("10");
//		f.setCommento("La macchina f");
//		Date data = new Date(120, 0, 12);
//		f.setData(data);
//		feedbackDao.save(f);

		AutomobileDao autoDao=factory.getAutomobileDao();
		
//		Automobile a=new Automobile("wi161cs","fiat","500","utilitaria","blu","203054","diesel","manuale","/BrumBrum/imageAuto/fiat-500V.jpg","5000.0","200.0");
//		a.setTarga("ED912CP");
//		a.setMarca("Milena");
//		a.setModello("Punto");
//		a.setCategoria("Utilitaria");
//		a.setColore("Bianco");
//		a.setChilometri(203054);
//		a.setAlimentazione("Diesel");
//		a.setCambio("Manuale");
//		a.setImmagine("SRC/WEB-CONTENT/punto");
//		a.setPrezzovendita(5000.0);
//		a.setPrezzonoleggio(200.0);
//		autoDao.save(a);
//		autoDao.update(a);
		//autoDao.delete("ED912CP");

/*		
		CarrelloDao carrelloDao=factory.getCarrelloDao();
		Carrello c=new Carrello();
		c.setId_carrello("3");
		c.setImporto_totale(1);
		c.setUtente_email("Buccio@gmail.com");
		carrelloDao.update(c);
*/
 		
//		UtenteDao utenteDao = factory.getUtenteDao();
//		
//	String e="kk@k";
//	utenteDao.delete(e);
		/*u.setUsername("sbuccio");
		u.setPassword("cisi");
	
		u.setTipo("privato");
		u.setCodice_fiscale("mzzfnc85t10d086e");
		u.setPartita_iva("0");
		u.setNome("Davide");
		u.setCognome("scaccomatto");*/
		
		//utenteDao.save(u);
//		FeedbackDao feedackDao=factory.getFeedbackDAO();
//		OrdineDao ordineDao=factory.getOrdineDAO();
//		PagamentoDao pagamentoDao=factory.getPagamentoDAO();
//		SpedizioneDao spedizioneDao=factory.getSpedizioneDAO();

		
		//Ordine oridine=new Ordine("1","via colle d'urso","cioa");
		//Ordine oridine2=new Ordine("1","via","c");
		// Pagamento pag= new Pagamento("2", "giulia", "1",10.1);
		//	Spedizione spe= new Spedizione("1", "ciao", "ciao", "1");

//		Feedback f=new Feedback();
		//inserisci feedback
		//f.setId("10");
		//f.setCommento("milena");
		//Date data = new Date(120,0,12);
		//f.setData(data);
		
		//pagamentoDao.delete(pag);
		//spedizioneDao.save(spe);
		//ordineDao.save(oridine);
		//ordineDao.delete(oridine);
		//ordineDao.update(oridine2);
		//feedackDao.delete(f);
		
//		System.out.println(utenteDao.find("sbuccio@gmail.com"));
//		System.out.println(DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL).getUtenteDao().find("sbuccio@gmail.com"));
//		Automobile auto= new Automobile("ae123er", "MERCEDES", "classea", "UTILITARIA", "GRIGIO", "50000", "diesel", "manuale", "./imageAuto/classea.jpg", "10600", "300", "DISPONIBILE");
//		autoDao.save(auto);
//		System.out.println(autoDao.find("AA211DD"));
		long millis=System.currentTimeMillis();  
		java.sql.Date date=new java.sql.Date(millis);
		System.out.println(date);
	}

}
