package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.Automobile;
import persistence.DAOFactory;
import persistenceDao.AutomobileDao;

public class LeNostreAuto extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//System.out.println("sono servlet nostre auto");
		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		AutomobileDao uDao = factory.getAutomobileDao();

	    List<Automobile> leNostreAuto= uDao.listaAutomobili();
	   
	   
	    String prova="targa:"+leNostreAuto.get(0).getTarga()+
	    				",marca:"+leNostreAuto.get(0).getMarca()+
	    			",categoria:"+leNostreAuto.get(0).getCategoria();
	    
	    
	    
	    req.getSession().setAttribute("prova", prova); 
	   
	    
	    req.getSession().setAttribute("automobiliDisponibili", leNostreAuto); //sto passando la lista all'html
	    
	    req.getSession().setAttribute("appoggio", leNostreAuto); //sto passando la lista all'html
	   
	 //   String strjson=gson.toJson(leNostreAuto.get(0));
	
	    List<Gson> gj=new ArrayList<Gson>();
	    for(int i=0; i<leNostreAuto.size(); i++) {
	    	Gson gson=new Gson();
	  	    gson.toJson(leNostreAuto.get(0));
	  	    gj.add(gson);    
	    }
	    
	    req.getSession().setAttribute("gj", gj); 
	    
		
		RequestDispatcher rd = req.getRequestDispatcher("le-nostre-auto.jsp"); //queste mi servono per  ricaricare la pagina
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
