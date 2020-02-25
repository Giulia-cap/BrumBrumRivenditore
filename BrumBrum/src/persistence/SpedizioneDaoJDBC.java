package persistence;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import exception.PersistenceException;
import model.Pagamento;
import model.Spedizione;
import persistenceDao.PagamentoDao;
import persistenceDao.SpedizioneDao;


public class SpedizioneDaoJDBC implements SpedizioneDao{

	private DataSource dataSource;

	public SpedizioneDaoJDBC(DataSource dataSource) {

		this.dataSource = dataSource;
}
	@Override
	public void save(Spedizione spedizione) {
		Connection connection = this.dataSource.getConnection();
		try {

			String insert = "insert into spedizione(id_spedizione,indirizzo,metodo,id_ordine) values (?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, spedizione.getId_spedizione());
			statement.setString(2,  spedizione.getIndirizzo());
			statement.setString(3,  spedizione.getMetodo());
			statement.setString(4, spedizione.getId_ordine());
			
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
	public void update(Spedizione spedizione) {
		Connection connection = this.dataSource.getConnection();
		
		try {
			String update ="UPDATE spedizone SET indirizzo=?,metodo=?,id_ordine=? WHERE id_spedizione=?";
			PreparedStatement pstmt = connection.prepareStatement(update);

			pstmt.setString(4, spedizione.getId_spedizione());
			pstmt.setString(1,  spedizione.getIndirizzo());
			pstmt.setString(2,  spedizione.getMetodo());
			pstmt.setString(3, spedizione.getId_ordine());
			
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			 System.out.println(e.getMessage());
			e.printStackTrace();
		}
		
		
	}
	@Override
	public void delete(String id_spedizione) {
		String sql = "DELETE FROM spedizione WHERE id_spedizione=?";
		Connection connection = this.dataSource.getConnection();
		try {
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setString(1,id_spedizione);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
}