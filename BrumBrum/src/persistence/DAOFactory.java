package persistence;

import persistenceDao.AutomobileDao;
import persistenceDao.CarrelloDao;
import persistenceDao.UtenteDao;
import persistenceDao.OrdineDao;
import persistenceDao.PagamentoDao;
import persistenceDao.SpedizioneDao;

public abstract class DAOFactory {

	public static final int POSTGRESQL = 2;

	public static DAOFactory getDAOFactory(int whichFactory) {
		switch (whichFactory) {
		case POSTGRESQL:
			return new PostgresDAOFactory();
		default:
			return null;
		}
	}

	public abstract AutomobileDao getAutomobileDao();
	public abstract CarrelloDao getCarrelloDao();
	public abstract UtenteDao getUtenteDao();
	public abstract OrdineDao getOrdineDAO();
	public abstract PagamentoDao getPagamentoDAO();
	public abstract SpedizioneDao getSpedizioneDAO();
}
