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

public class AddCar extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		
		System.out.println("Sono nel DoPost");

		String targa=null, marca=null,  modello=null, categoria=null, colore=null, alimentazione=null, cambio=null, immagine=null,  km=null,  prezzovendita = null,  prezzonoleggio = null, disponibilita="DISPONIBILE";

		if(!req.getParameter("targa").isEmpty() && !req.getParameter("marca").isEmpty() && !req.getParameter("modello").isEmpty() && !req.getParameter("categoria").isEmpty() && !req.getParameter("colore").isEmpty() && !req.getParameter("alimentazione").isEmpty() && 
				!req.getParameter("cambio").isEmpty() && !req.getParameter("immagine").isEmpty() && !req.getParameter("chilometri").isEmpty() && !req.getParameter("prezzovendita").isEmpty() && !req.getParameter("prezzonoleggio").isEmpty() )
		{ 
			targa = req.getParameter("targa").toLowerCase();
			marca = req.getParameter("marca").toLowerCase();
			modello = req.getParameter("modello").toLowerCase();
			categoria = req.getParameter("categoria").toLowerCase();
			colore = req.getParameter("colore").toLowerCase();
			km = req.getParameter("chilometri").toLowerCase();
			alimentazione = req.getParameter("alimentazione").toLowerCase();
			cambio = req.getParameter("cambio").toLowerCase();
			immagine="./imageAuto/"+modello+".jpg";
			
			
			System.out.println("sono il modello "+modello);
			prezzovendita = req.getParameter("prezzovendita");
			prezzonoleggio = req.getParameter("prezzonoleggio");
		}
		Automobile auto = new Automobile(targa, marca, modello, categoria, colore, km, alimentazione, cambio, immagine, prezzovendita, prezzonoleggio, disponibilita);
		System.out.println(auto);
		System.out.println(auto.getMarca());
		AutomobileDao autoDao = factory.getAutomobileDao();
		autoDao.save(auto);
		System.out.println(auto);
		req.getSession().setAttribute("automobile", auto);
		resp.sendRedirect("confermaInserimentoAuto.jsp");
		
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.sendRedirect("addCar.jsp");
		
		System.out.println("Sono nel DoGet");
	}
}

