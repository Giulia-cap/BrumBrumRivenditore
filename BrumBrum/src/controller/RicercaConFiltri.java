package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Automobile;
import persistence.DAOFactory;
import persistenceDao.AutomobileDao;



public class RicercaConFiltri extends HttpServlet {
	
	String berlina;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		AutomobileDao uDao = factory.getAutomobileDao();

	    List<Automobile> leNostreAuto= uDao.listaAutomobili();
	    
	    
	    req.getSession().setAttribute("automobili", leNostreAuto); //sto passando la lista all'html
	    
		RequestDispatcher rd = req.getRequestDispatcher("RicercaConFiltri.jsp"); 
		rd.forward(req, resp);
	}

}
