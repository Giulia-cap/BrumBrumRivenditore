package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Utente;
import persistence.DAOFactory;
import persistenceDao.UtenteDao;

public class ProfiloUtente extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		UtenteDao uDao = factory.getUtenteDao();
				
		String email = (String) req.getSession().getAttribute("email");
				
		Utente u = uDao.find(email);
		req.getSession().setAttribute("utente", u);
		uDao.delete(email);
		
		
		
	}

}
