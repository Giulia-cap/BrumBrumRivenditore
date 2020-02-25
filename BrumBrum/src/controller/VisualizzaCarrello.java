package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javafx.util.Pair;
import model.Automobile;
import model.ComplexFeedback;
import model.Utente;
import persistence.DAOFactory;
import persistenceDao.AutomobileDao;
import persistenceDao.CarrelloDao;


public class VisualizzaCarrello extends HttpServlet {	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("DOGET VISUALIZZACARRELLO");
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		CarrelloDao cDao = factory.getCarrelloDao();

		String email= (String) req.getParameter("email");
		System.out.println("Controllo per questa email: "+ email);
		List<Automobile> autoNelCarrello= cDao.getAutoNelCarrello(email);
		double tot=cDao.getTotaleCarrello(email);
		
		req.getSession().setAttribute("autoNelCarrello", autoNelCarrello);
		req.getSession().setAttribute("totaleCarrello",tot);
		RequestDispatcher rd = req.getRequestDispatcher("carrello.jsp"); 
		rd.forward(req, resp);

	}



}
