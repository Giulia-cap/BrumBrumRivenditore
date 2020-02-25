package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Automobile;
import model.Utente;
import persistence.DAOFactory;
import persistenceDao.AutomobileDao;
import persistenceDao.UtenteDao;

public class ModificaAuto extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("DOPOST MODIFICA AUTO");
		Automobile m= (Automobile)req.getSession().getAttribute("automobile");
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		String targa=m.getTarga(), marca=m.getMarca(),  modello=m.getModello(), categoria=m.getCategoria(), colore=m.getColore(), alimentazione=m.getAlimentazione(), cambio=m.getCambio(), immagine=m.getAlimentazione(),  
				km=m.getKm(),  prezzovendita =m.getPrezzovendita() ,  prezzonoleggio = m.getPrezzonoleggio(), disponibilita=m.getDisponibilita();
		
	
		
		targa = req.getParameter("targa");
		marca = req.getParameter("marca");
		modello = req.getParameter("modello");
		categoria = req.getParameter("categoria");
		colore = req.getParameter("colore");
		km = req.getParameter("chilometri");
		alimentazione = req.getParameter("alimentazione");
		cambio = req.getParameter("cambio");
		prezzovendita = req.getParameter("prezzovendita");
		prezzonoleggio = req.getParameter("prezzonoleggio");
		immagine=m.getImmagine();
		
		if(categoria==null) {
			categoria=m.getCategoria();
		}
		if(alimentazione==null) {
			alimentazione=m.getAlimentazione();
		}
		if(cambio==null) {
			cambio=m.getCambio();
		}
		
		Automobile auto = new Automobile(targa, marca, modello, categoria, colore, km, alimentazione, cambio, immagine, prezzovendita, prezzonoleggio, disponibilita);
		AutomobileDao autoDao = factory.getAutomobileDao();
		System.out.println(auto);
		autoDao.update(auto);
		resp.sendRedirect("confermaInserimentoAuto.jsp");
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("DOGET MODIFICA AUTO");

		resp.sendRedirect("ModificaAuto.jsp");
		
	}
}

