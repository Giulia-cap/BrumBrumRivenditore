package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Automobile;
import model.Utente;
import persistence.DAOFactory;
import persistenceDao.AutomobileDao;
import persistenceDao.CarrelloDao;

public class SvuotaCarrello  extends HttpServlet {



	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Utente utente=(Utente) req.getSession().getAttribute("utente");
		String email=utente.getEmail();
		
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		CarrelloDao carrelloDao = factory.getCarrelloDao();
		System.out.println("stampa email svuota"+email);
		carrelloDao.svuota(email);
		carrelloDao.modImporto(email, 0);
		
		//carrelloDao.update(email);
		req.getSession().setAttribute("totaleOrdine", 0);
		resp.sendRedirect("VisualizzaCarrello?email"+email);
	}

}
