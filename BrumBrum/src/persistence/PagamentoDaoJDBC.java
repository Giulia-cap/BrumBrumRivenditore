package persistence;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import exception.PersistenceException;
import model.Pagamento;
import persistenceDao.PagamentoDao;


public class PagamentoDaoJDBC implements PagamentoDao{

	private DataSource dataSource;

	public PagamentoDaoJDBC(DataSource dataSource) {

		this.dataSource = dataSource;
}
	@Override
	public void save(Pagamento pagamento) {
		Connection connection = this.dataSource.getConnection();
		try {

			String insert = "insert into pagamento(id_pagamento,metodo,id_ordine,importototale) values (?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insert);
			statement.setString(1, pagamento.getId_pagamento());
			statement.setString(2,  pagamento.getMetodo());
			statement.setString(3,  pagamento.getId_ordine());
			statement.setDouble(4, pagamento.getImportoTotale());
			
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
	public void update(Pagamento pagamento) {
		  
				Connection connection = this.dataSource.getConnection();
				
				try {
					String update ="UPDATE pagamento SET metodo=?,id_ordine=?,importototale=? WHERE id_pagamento=?";
					PreparedStatement pstmt = connection.prepareStatement(update);

					pstmt.setString(4, pagamento.getId_pagamento());
					pstmt.setString(1,  pagamento.getMetodo());
					pstmt.setString(2,  pagamento.getId_ordine());
					pstmt.setDouble(3, pagamento.getImportoTotale());
					
					pstmt.executeUpdate();
					
				} catch (SQLException e) {
					 System.out.println(e.getMessage());
					e.printStackTrace();
				}
				
		
	}
	@Override
	public void delete(String id_pagamento) {
		String sql = "DELETE FROM pagamento WHERE id_pagamento=?";
		Connection connection = this.dataSource.getConnection();
		try {
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setString(1,id_pagamento);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
}