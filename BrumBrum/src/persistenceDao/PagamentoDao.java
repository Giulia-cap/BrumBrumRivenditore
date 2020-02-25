package persistenceDao;


import model.Pagamento;

public interface PagamentoDao {
	
	public void save(Pagamento pagamento); // Create

	public void update(Pagamento pagamento); // Update

	public void delete(String id_pagamento); // Delete
	

}
