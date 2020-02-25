package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import persistence.DAOFactory;
import persistenceDao.AutomobileDao;
import persistenceDao.UtenteDao;

public class EliminaAutomobile extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		
		AutomobileDao auto = factory.getAutomobileDao();
		String targa=req.getParameter("targa");
		System.out.println("sono nel get e sto eliminando" + targa);
		auto.delete(targa);
		
		try {
			Thread.sleep(4000);
			resp.sendRedirect("AdminProfilo.jsp");
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
	}

}
