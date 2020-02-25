package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Automobile;
import model.Utente;
import persistence.DAOFactory;
import persistenceDao.AutomobileDao;
import persistenceDao.UtenteDao;

public class CaricaAutomobili extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		AutomobileDao uDao = factory.getAutomobileDao();
		//String autoDaCercare=req.getParameter("ricerca");
		
		

	    List<Automobile> leNostreAuto= uDao.listaAutomobili();
	   
	   
	    String prova="targa:"+leNostreAuto.get(0).getTarga()+
	    				",marca:"+leNostreAuto.get(0).getMarca()+
	    			",categoria:"+leNostreAuto.get(0).getCategoria();
	    
	    
	    
	    req.getSession().setAttribute("parolaCercata", prova); 

	    
	    req.getSession().setAttribute("automobiliDisponibili", leNostreAuto); //sto passando la lista all'html
	    
	    RequestDispatcher rd = req.getRequestDispatcher("le-nostre-auto.jsp"); //queste mi servono per ricaricare la pagina
		rd.forward(req, resp);
	}
}

