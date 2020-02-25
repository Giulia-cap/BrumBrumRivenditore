package persistenceDao;

import java.util.List;

import model.Automobile;
import model.ComplexAutomobile;
import model.Ordine;

public interface OrdineDao {
	
	public void save(Ordine ordine); // Create

	public void update(Ordine ordine); // Update

	public void delete(String ordine); // Delete
	
	public int getLastOrder(); 
	
	public void ordine_contiene_auto(Automobile automobile,Ordine ordine );
	
	public void ordine_effettuato_da_utente(String email,Automobile automobile,Ordine ordine );
	
	public List<ComplexAutomobile> storicoOrdini(String email);

	public String getIDbyTarga(String targa);
	
	public List<ComplexAutomobile> listaAutoAcquistate();
	
	public List<ComplexAutomobile> listaAutoNoleggiate();
}
