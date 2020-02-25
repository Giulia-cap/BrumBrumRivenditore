package persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import exception.PersistenceException;
import model.Utente;
import persistenceDao.UtenteDao;

public class UtenteDaoJDBC implements UtenteDao{

	private DataSource dataSource;

	public UtenteDaoJDBC(DataSource dataSource) {

		this.dataSource = dataSource;
	}
	@Override
	public void save(Utente utente) {
		Connection connection = this.dataSource.getConnection();
		try {

			String insert = "insert into utente(username,password,email,tipo,codice_fiscale,partita_iva,nome,cognome) values (?,?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, utente.getUsername());
			statement.setString(2, utente.getPassword());
			statement.setString(3, utente.getEmail());
			statement.setString(4, utente.getTipo());
			statement.setString(5, utente.getCodice_fiscale());
			statement.setString(6, utente.getPartita_iva());
			statement.setString(7, utente.getNome());
			statement.setString(8, utente.getCognome());
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
	public void update(Utente utente) {
		Connection connection = this.dataSource.getConnection();

		try {
			String update ="UPDATE utente SET username=?,password=?,tipo=?,codice_fiscale=?,partita_iva=?,nome=?,cognome=? WHERE email=?";
			PreparedStatement statement = connection.prepareStatement(update);

			statement.setString(1, utente.getUsername());
			statement.setString(2, utente.getPassword());
			statement.setString(3, utente.getTipo());
			statement.setString(4, utente.getCodice_fiscale());
			statement.setString(5, utente.getPartita_iva());
			statement.setString(6, utente.getNome());
			statement.setString(7, utente.getCognome());
			statement.setString(8, utente.getEmail());

			statement.executeUpdate();

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}

	}

	@Override
	public void delete(String email) {
		String sql = "DELETE FROM utente WHERE email=?";
		Connection connection = this.dataSource.getConnection();
		try {
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setString(1,email);
			pstmt.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}


	}
	@Override
	public Utente find(String email) {
		Connection connection = this.dataSource.getConnection();
		Utente utente = null;
		try {
			PreparedStatement statement;
			String query = "select * from utente where email=? ";
			statement = connection.prepareStatement(query);
			statement.setString(1, email);

			ResultSet result = statement.executeQuery();


			if (result.next()) {
				utente =new Utente(result.getString("username"),result.getString("password"),result.getString("email"),result.getString("tipo"),result.getString("codice_fiscale"),result.getString("partita_iva"),result.getString("nome"),result.getString("cognome"));			
				System.out.println("Utente trovato.");

			}

		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
		return utente;
	}


	public int getNumeroUtentiRegistrati() {
		Connection connection= this.dataSource.getConnection();
		int tot=0;
		try {
			String load = "SELECT COUNT(email)\r\n" + 
					"FROM utente";
			PreparedStatement statement = connection.prepareStatement(load);			
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				tot=Integer.parseInt(result.getString("count"));
			}

		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}

		return tot-1;
	}


}
