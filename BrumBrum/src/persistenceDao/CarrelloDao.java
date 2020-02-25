package persistenceDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import exception.PersistenceException;
import model.Automobile;
import model.Carrello;

public interface CarrelloDao {
	public void save(Carrello carrello); // Create
	
	void update(Carrello carrello);

	public void delete(String carrello); // Delete
	
	public List<Automobile> getAutoNelCarrello(String id_carrello);

	public int getNumAutoNelCarrello(String id_carrello);

	public double getTotaleCarrello(String id_carrello);
	
	public void svuota(String id_carrello);	

	void modImporto(String id_carrello, double importo_totale);

}
