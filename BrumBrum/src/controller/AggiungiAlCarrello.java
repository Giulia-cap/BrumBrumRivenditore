package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Automobile;
import model.Carrello;
import model.Utente;
import persistence.DAOFactory;
import persistenceDao.AutomobileDao;
import persistenceDao.CarrelloDao;
import persistenceDao.UtenteDao;

public class AggiungiAlCarrello extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		UtenteDao uda=factory.getUtenteDao();
		CarrelloDao c=factory.getCarrelloDao();
		AutomobileDao aDao=factory.getAutomobileDao();
		Automobile a=aDao.find((String) req.getSession().getAttribute("targa"));
		String email=  req.getParameter("email");
		Utente u=uda.find(email);
		if(u.getTipo().equals("rivenditore")) {

		Carrello carrello=new Carrello(email, Double.parseDouble(a.getPrezzovendita()));
		c.update(carrello);
		aDao.auto_aggiunta_al_carrello(a.getTarga(), email);
		
		resp.sendRedirect("VisualizzaCarrello?email="+email);
		}else {
			resp.sendRedirect("erroreCarrelloRivenditore.jsp");

		}

	}
}

