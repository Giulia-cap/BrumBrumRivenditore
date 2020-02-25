package persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import exception.PersistenceException;
import model.Automobile;
import model.Utente;
import persistenceDao.AutomobileDao;

public class AutomobileDaoJDBC implements AutomobileDao{

	private DataSource dataSource;

	public AutomobileDaoJDBC(DataSource dataSource) {

		this.dataSource = dataSource;
	}

	@Override
	public void save(Automobile automobile) {

		Connection connection = this.dataSource.getConnection();
		try {

			String insert = "insert into automobile(targa,marca,modello,categoria,colore,km,alimentazione,cambio,immagine,prezzoVendita,prezzoNoleggio,disponibilita) values (?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, automobile.getTarga());
			statement.setString(2, automobile.getMarca());
			statement.setString(3, automobile.getModello());
			statement.setString(4, automobile.getCategoria());
			statement.setString(5, automobile.getColore());
			statement.setString(6, automobile.getKm());
			statement.setString(7, automobile.getAlimentazione());
			statement.setString(8, automobile.getCambio());
			statement.setString(9, automobile.getImmagine());
			statement.setString(10, automobile.getPrezzovendita());
			statement.setString(11, automobile.getPrezzonoleggio());
			statement.setString(12, "DISPONIBILE");
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
	public void update(Automobile automobile) {
		Connection connection = this.dataSource.getConnection();


		try {
			String update ="UPDATE automobile SET marca=?,modello=?,categoria=?,colore=?,km=?,alimentazione=?,cambio=?,immagine=?,prezzoVendita=?,prezzoNoleggio=?,disponibilita=? WHERE targa=?";
			PreparedStatement statement = connection.prepareStatement(update);

			statement.setString(1, automobile.getMarca());
			statement.setString(2, automobile.getModello());
			statement.setString(3, automobile.getCategoria());
			statement.setString(4, automobile.getColore());
			statement.setString(5, automobile.getKm());
			statement.setString(6, automobile.getAlimentazione());
			statement.setString(7, automobile.getCambio());
			statement.setString(8, automobile.getImmagine());
			statement.setString(9, automobile.getPrezzovendita());
			statement.setString(10, automobile.getPrezzonoleggio());
			statement.setString(11, automobile.getDisponibilita());
			statement.setString(12, automobile.getTarga());
			statement.executeUpdate();

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}

	@Override
	public void delete(String targa) {
		
		Connection connection = this.dataSource.getConnection();
		String sql1 = "DELETE FROM aggiunta WHERE automobile_id = ?"; 

		try {
			PreparedStatement pstmt = connection.prepareStatement(sql1);
			pstmt.setString(1,targa);
			pstmt.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}
		String sql = "DELETE FROM automobile WHERE targa = ?"; 

		try {
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setString(1,targa);
			pstmt.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	public Automobile find(String targa) {
		Connection connection = this.dataSource.getConnection();
		Automobile auto = null;
		try {
			PreparedStatement statement;
			String query = "select * from automobile where targa = ? ";
			statement = connection.prepareStatement(query);
			statement.setString(1, targa);

			ResultSet result = statement.executeQuery();


			if (result.next()) {

				auto = new Automobile(result.getString("targa"), result.getString("marca"), result.getString("modello"), result.getString("categoria"), result.getString("colore"), result.getString("km"), result.getString("alimentazione"), result.getString("cambio"), result.getString("immagine"), result.getString("prezzovendita"), result.getString("prezzonoleggio"), result.getString("disponibilita"));			
				System.out.println("Auto trovata.");


			}
			return auto;

		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
		
	}


	@Override
	public List<Automobile> cercaAuto(String daCercare)
	{
		Connection connection = this.dataSource.getConnection();
		List<Automobile> automobili = new LinkedList<>();

		try 
		{
			Automobile auto;
			PreparedStatement statement;
			String query = "select * from automobile where (disponibilita = ('DISPONIBILE') and lower(marca) like lower(?)) or (disponibilita = ('DISPONIBILE') and lower(modello) like lower(?)) or (disponibilita = ('DISPONIBILE') and lower(categoria) like lower(?))" ;
			statement = connection.prepareStatement(query);
			statement.setString(1, "%"+daCercare+"%");
			statement.setString(2, "%"+daCercare+"%");
			statement.setString(3, "%"+daCercare+"%");
			ResultSet result = statement.executeQuery();

			while (result.next()) {
				auto =new Automobile(result.getString("targa"), result.getString("marca"), result.getString("modello"), result.getString("categoria"), result.getString("colore"), result.getString("km"), result.getString("alimentazione"), result.getString("cambio"), result.getString("immagine"), result.getString("prezzovendita"), result.getString("prezzonoleggio"), result.getString("disponibilita"));	
				automobili.add(auto);
			}

			return automobili;
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
	}

	@Override
	public int getSellPrice(String targa) {
		Connection connection = this.dataSource.getConnection();		
		try 
		{
			PreparedStatement statement;
			String query = "SELECT prezzovendita from automobile where targa = ?";
			statement = connection.prepareStatement(query);

			ResultSet result = statement.executeQuery();

			String out =result.getString("prezzovendita");			

			return Integer.parseInt(out);

		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}

	}
	@Override
	public void inserisciInJson() {
		Connection connection = this.dataSource.getConnection();
		List<Automobile> automobili = new LinkedList<>();

		try 
		{
			Automobile auto;
			PreparedStatement statement;
			String query = "select targa AS 'info.targa' from automobile where disponibilita = ('DISPONIBILE') for JSON PATH";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();

			while (result.next()) {
				auto =new Automobile(result.getString("targa"), result.getString("marca"), result.getString("modello"), result.getString("categoria"), result.getString("colore"), result.getString("km"), result.getString("alimentazione"), result.getString("cambio"), result.getString("immagine"), result.getString("prezzovendita"), result.getString("prezzonoleggio"), result.getString("disponibilita"));	
				
				automobili.add(auto);
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

		
	}
	
	@Override
	public List<Automobile> listaAutomobili(){
		Connection connection = this.dataSource.getConnection();
		List<Automobile> automobili = new LinkedList<>();

		try 
		{
			Automobile auto;
			PreparedStatement statement;
			String query = "select * from automobile where disponibilita = ('DISPONIBILE')";
			statement = connection.prepareStatement(query);
			ResultSet result = statement.executeQuery();

			while (result.next()) {
				auto =new Automobile(result.getString("targa"), result.getString("marca"), result.getString("modello"), result.getString("categoria"), result.getString("colore"), result.getString("km"), result.getString("alimentazione"), result.getString("cambio"), result.getString("immagine"), result.getString("prezzovendita"), result.getString("prezzonoleggio"), result.getString("disponibilita"));	
				
				automobili.add(auto);
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
		return automobili;
	}


	
	@Override
	public void auto_aggiunta_al_carrello(String targa, String id_carrello) {
		Connection connection= this.dataSource.getConnection();
		try {
			String save = "insert into aggiunta(automobile_id,carrello_id) values(?,?)";
			PreparedStatement statement = connection.prepareStatement(save);
			statement.setString(1, targa);
			statement.setString(2, id_carrello);
			statement.executeUpdate();
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
		
	}

	@Override
	public void auto_Corrisponde_Ordine(String id_auto, String id_ordine) {
		Connection connection = this.dataSource.getConnection();
		try {

			String insert = "insert into corrisponde(ordine_id, automobile_id) values (?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, id_ordine);
			statement.setString(2, id_auto);
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


}
