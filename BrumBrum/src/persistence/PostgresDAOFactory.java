package persistence;

import persistenceDao.AutomobileDao;
import persistenceDao.CarrelloDao;
import persistenceDao.UtenteDao;
import persistenceDao.OrdineDao;
import persistenceDao.PagamentoDao;
import persistenceDao.SpedizioneDao;


public class PostgresDAOFactory extends DAOFactory {

	private static DataSource dataSource;
	static {
		try {
			Class.forName("org.postgresql.Driver").newInstance();
			dataSource = new DataSource("jdbc:postgresql://ec2-54-246-89-234.eu-west-1.compute.amazonaws.com:5432/d4f2djb7u2795p?sslmode=require", "xnplqypyuczoke", "68c50e53fc3171cdae9117df195893f80d5e51ddc137c06ac26d1e3ec9a17d81");		} catch (Exception e) {
			System.err.println("PostgresDAOFactory.class: failed to load MySQL JDBC driver\n" + e);
			e.printStackTrace();
		}
	}

	public DataSource getDataSource() {
		return dataSource;
	}



	@Override
	public AutomobileDao getAutomobileDao() {
		return new AutomobileDaoJDBC(dataSource) ;
	}

	@Override
	public CarrelloDao getCarrelloDao() {
		return new CarrelloDaoJDBC(dataSource) ;
	}

	@Override
	public UtenteDao getUtenteDao() {
		return new UtenteDaoJDBC(dataSource) ;
	}

	@Override
	public OrdineDao getOrdineDAO() {
		return new OrdineDaoJDBC(dataSource) ;
	}

	@Override
	public PagamentoDao getPagamentoDAO() {
		return new PagamentoDaoJDBC(dataSource) ;
	}

	@Override
	public SpedizioneDao getSpedizioneDAO() {
		return new SpedizioneDaoJDBC(dataSource) ;
	}

}
