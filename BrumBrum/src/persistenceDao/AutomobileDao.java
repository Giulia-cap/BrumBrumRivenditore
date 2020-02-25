package persistenceDao;

import java.util.List;

import model.Automobile;


public interface AutomobileDao {

	public void save(Automobile automobile); // Create

	public void update(Automobile automobile); // Update

	public void delete(String automobile); // Deletes
	
	public Automobile find(String id);

	public int getSellPrice(String id);
	
	public List<Automobile> cercaAuto(String autoDaCercare);

	public List<Automobile> listaAutomobili();
		
	void auto_aggiunta_al_carrello(String targa, String id_carrello);

	void auto_Corrisponde_Ordine(String id_auto, String id_ordine);

	void inserisciInJson();


}


