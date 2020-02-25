package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javafx.util.Pair;
import model.Automobile;
import model.ComplexAutomobile;
import model.Ordine;
import persistence.DAOFactory;
import persistenceDao.AutomobileDao;
import persistenceDao.OrdineDao;
import persistenceDao.UtenteDao;

public class StoricoOrdini extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String loggedUser=  req.getParameter("emailLoggato");
		
		
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		OrdineDao ordineDao=factory.getOrdineDAO();


		List<ComplexAutomobile> autoOrdinate= ordineDao.storicoOrdini(loggedUser);
		
		
//		for(Automobile a:autoOrdinate)
//			System.out.println(a.toString());
		
		ArrayList<Float>  SpesaTotPerMese=new ArrayList<Float>();

		
		req.getSession().setAttribute("storicoOrdini", autoOrdinate); //sto passando la lista all'html
		UtenteDao utente=factory.getUtenteDao();
	
		RequestDispatcher rd;
		if(utente.find(loggedUser).getTipo().equals("rivenditore"))
			 rd = req.getRequestDispatcher("StoricoOrdiniRivenditore.jsp");
		else
			rd = req.getRequestDispatcher("i-miei-ordini.jsp"); //queste mi servono per  ricaricare la pagina
		rd.forward(req, resp);
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);

		String autoDaCercare=req.getParameter("ricerca");
		System.out.println("servlet avviata");*/

		resp.sendRedirect("index.jsp");

	}

}
