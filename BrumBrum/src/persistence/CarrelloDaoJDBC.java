package persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import exception.PersistenceException;
import model.Automobile;
import model.Carrello;
import persistenceDao.CarrelloDao;

public class CarrelloDaoJDBC implements CarrelloDao {
	private DataSource dataSource;
	public CarrelloDaoJDBC(DataSource dataSource) {

		this.dataSource = dataSource;
	}
	@Override
	public void save(Carrello carrello) {
		Connection connection = this.dataSource.getConnection();
		try {

			String insert = "insert into carrello(id_carrello,importo_totale) values (?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, carrello.getId_carrello());
			statement.setDouble(2, carrello.getImporto_totale());
			statement.executeUpdate();


		} catch (SQLException e) {
			if (connection != null) {
				try {
					connection.rollback();
				} catch (SQLException excep) {
					throw new PersistenceException(e.getMessage());
				}
			}
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}		
	}
	
	@Override
	public void update(Carrello carrello) {
		Connection connection = this.dataSource.getConnection();

		try {
			String update ="UPDATE carrello SET importo_totale=? WHERE id_carrello=?";
			PreparedStatement statement = connection.prepareStatement(update);

			statement.setString(2, carrello.getId_carrello());
			statement.setDouble(1, carrello.getImporto_totale());

			statement.executeUpdate();

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}

	@Override
	public void modImporto(String id_carrello,double importo_totale) {
		Connection connection = this.dataSource.getConnection();

		try {
			String update ="UPDATE carrello SET importo_totale=? WHERE id_carrello=?";
			PreparedStatement statement = connection.prepareStatement(update);

			statement.setString(2, id_carrello);
			statement.setDouble(1, importo_totale);

			statement.executeUpdate();

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}

	@Override
	public void delete(String id_carrello) {
		String sql = "DELETE FROM carrello WHERE id_carrello = ?";
		Connection connection = this.dataSource.getConnection();

		try {
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setString(1,id_carrello);
			pstmt.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}
	
	public void svuota(String id_carrello) {
		String sql = "DELETE FROM aggiunta WHERE carrello_id = ?";
		Connection connection = this.dataSource.getConnection();

		try {
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setString(1,id_carrello);
			pstmt.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}



	@Override
	public List<Automobile> getAutoNelCarrello(String id_carrello) 
	{
		Connection connection = this.dataSource.getConnection();

		List<Automobile> automobili = new ArrayList<>();

		try 
		{
			PreparedStatement statement;
			String sql = "SELECT automobile.* \r\n" + 
					"FROM automobile \r\n" + 
					"INNER JOIN aggiunta on aggiunta.automobile_id=automobile.targa\r\n" + 
					"WHERE carrello_id = ?";
			statement = connection.prepareStatement(sql);
			statement.setString(1, id_carrello);

			ResultSet result = statement.executeQuery();

			while (result.next()) {
				Automobile a =new Automobile(result.getString("targa"), result.getString("marca"), result.getString("modello"), result.getString("categoria"), result.getString("colore"), result.getString("km"), result.getString("alimentazione"), result.getString("cambio"), result.getString("immagine"), result.getString("prezzovendita"), result.getString("prezzonoleggio"), result.getString("disponibilita"));	
				System.out.println("CONTROLLO AUTOMOBILI:" +a);
				automobili.add(a);
			}
			return automobili;
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		}


	}

	@Override
	public int getNumAutoNelCarrello(String id_carrello) 
	{
		Connection connection = this.dataSource.getConnection();

		List<Automobile> automobili=new ArrayList<>();

		try 
		{
			PreparedStatement statement;
			String sql = "SELECT * FROM aggiunta WHERE carrello_id = ?";
			statement = connection.prepareStatement(sql);
			statement.setString(1, id_carrello);

			ResultSet result = statement.executeQuery();

			while (result.next()) {
				Automobile a =new Automobile(result.getString("targa"), result.getString("marca"), result.getString("modello"), result.getString("categoria"), result.getString("colore"), result.getString("km"), result.getString("alimentazione"), result.getString("cambio"), result.getString("immagine"), result.getString("prezzovendita"), result.getString("prezzonoleggio"), result.getString("disponibilita"));	
				automobili.add(a);
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		}
		return automobili.size();

	}
	@Override
	public double getTotaleCarrello(String id_carrello) 
	{
		Connection connection = this.dataSource.getConnection();

		List<Automobile> automobili = new ArrayList<>();

		try 
		{
			PreparedStatement statement;
			String sql = "SELECT automobile.* \r\n" + 
					"FROM automobile \r\n" + 
					"INNER JOIN aggiunta on aggiunta.automobile_id=automobile.targa\r\n" + 
					"WHERE carrello_id = ?";
			statement = connection.prepareStatement(sql);
			statement.setString(1, id_carrello);

			ResultSet result = statement.executeQuery();
			double tot=0;
			while (result.next()) {
				Automobile a =new Automobile(result.getString("targa"), result.getString("marca"), result.getString("modello"), result.getString("categoria"), result.getString("colore"), result.getString("km"), result.getString("alimentazione"), result.getString("cambio"), result.getString("immagine"), result.getString("prezzovendita"), result.getString("prezzonoleggio"), result.getString("disponibilita"));	
				System.out.println("CONTROLLO AUTOMOBILI:" +a);
				automobili.add(a);
				tot+=Double.parseDouble(a.getPrezzovendita());
			}
			return tot;
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		}
	}
	
}
