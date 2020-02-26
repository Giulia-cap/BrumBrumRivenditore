package controller;

import java.io.IOException;
import java.util.List;

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

		CarrelloDao cDao = factory.getCarrelloDao();
		List<Automobile> autoNelCarrello= cDao.getAutoNelCarrello(email);		

		boolean autoGiaPresenteNelCarrello=false;
		if(u.getTipo().equals("rivenditore")) {


			for(int i=0;i<autoNelCarrello.size();i++)
			{
				if(autoNelCarrello.get(i).getTarga().equals( a.getTarga()) )
				{
					autoGiaPresenteNelCarrello=true;
				}
			}


			if(!autoGiaPresenteNelCarrello)
			{
				Carrello carrello=new Carrello(email, Double.parseDouble(a.getPrezzovendita()));

				c.update(carrello);
				aDao.auto_aggiunta_al_carrello(a.getTarga(), email);

				resp.sendRedirect("VisualizzaCarrello?email="+email);
			}
			else 
				resp.sendRedirect("autoGiaPresenteNelCarrello.jsp");

		}else {
			resp.sendRedirect("erroreCarrelloRivenditore.jsp");

		}

	}
}

