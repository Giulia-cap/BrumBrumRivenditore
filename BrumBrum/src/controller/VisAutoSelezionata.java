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
import persistence.DAOFactory;
import persistenceDao.AutomobileDao;
import persistenceDao.UtenteDao;


public class VisAutoSelezionata extends HttpServlet {
	boolean acq;
	boolean acqCarrello;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String targa=req.getParameter("targa");
		System.out.println(targa);
	

		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		AutomobileDao uDao = factory.getAutomobileDao();
		
		
		Automobile autom=null;
		autom= uDao.find(targa);
		
		
		req.getSession().setAttribute("acq", acq);
		req.getSession().setAttribute("acq", true);
	
		req.getSession().setAttribute("acqCarrello", acqCarrello);
		req.getSession().setAttribute("acqCarrello", false);
		
		req.getSession().setAttribute("isBuying", "buying");
		
		req.getSession().setAttribute("targa", targa);
		//System.out.println(b);
				  

		req.getSession().setAttribute("automobile", autom); //sto passando la lista all'html


		RequestDispatcher rd = req.getRequestDispatcher("caratteristiche-auto.jsp"); //queste mi servono per  ricaricare la pagina
		rd.forward(req, resp);

	}



}
