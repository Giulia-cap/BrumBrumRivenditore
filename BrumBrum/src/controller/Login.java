package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Utente;
import persistence.DAOFactory;
import persistenceDao.UtenteDao;

public class Login extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		UtenteDao uDao = factory.getUtenteDao();

		
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		String logout=req.getParameter("logout");
		Utente u = uDao.find(email);

		RequestDispatcher rd;

		if (logout == null) {
			
			if(uDao.find(email)!=null && pass.equals(u.getPassword())){
				if(u.getTipo().equals("rivenditore"))
				{
					req.getSession().setAttribute("SonoUnRivenditore", true); 
				}
				else req.getSession().setAttribute("SonoUnRivenditore", false);
			}

			if(uDao.find(email)!=null && pass.equals(u.getPassword())) {
				req.getSession().setAttribute("utente", u);
				rd = req.getRequestDispatcher("index.jsp");	
				rd.forward(req, resp);
			}
			else {
				resp.sendRedirect("LoginFailed.jsp");
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