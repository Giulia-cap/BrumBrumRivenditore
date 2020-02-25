package controller;

import java.io.IOException;
import java.util.StringTokenizer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Carrello;
import model.Utente;
import persistence.DAOFactory;
import persistenceDao.CarrelloDao;
import persistenceDao.UtenteDao;

public class LogGoogle extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		UtenteDao uDao = factory.getUtenteDao();
		
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		String logout=req.getParameter("logout");
		String nomeCognome=req.getParameter("nome");
		Utente u = uDao.find(email);
		String nome = null;
		String cognome=null;
		
		StringTokenizer defaultTokenizer = new StringTokenizer(nomeCognome);
		int cont=0;
		while (defaultTokenizer.hasMoreTokens())
		{
			if(cont==0)
				nome=defaultTokenizer.nextToken();
			else 
				cognome=defaultTokenizer.nextToken();
			cont++;
		}
		 
		 
		
		if(u==null) {
		Utente google=new Utente("prova", "prova", email, "rivenditore","aaaaaaaaaaaaa","11111111111",nome,cognome);
		uDao.save(google);

		CarrelloDao carrelloDao=factory.getCarrelloDao();
		Carrello carrello=new model.Carrello(email, 0);
		carrelloDao.save(carrello);
		
		u = uDao.find(email);
		}

		RequestDispatcher rd;

		if (logout == null) {
			
			if(uDao.find(email)!=null){
				if(u.getTipo().equals("rivenditore"))
					req.getSession().setAttribute("SonoUnRivenditore", true); 
				else
					req.getSession().setAttribute("SonoUnRivenditore", false);
			
				req.getSession().setAttribute("utente", u);
				rd = req.getRequestDispatcher("index.jsp");	
				rd.forward(req, resp);

			}
			

		}else {
			if (logout.equals("true")) {
				req.getSession().setAttribute("utente", null);
			}
			rd = req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
		}
	}

}
