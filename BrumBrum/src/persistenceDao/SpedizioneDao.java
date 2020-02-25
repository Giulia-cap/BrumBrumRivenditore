package persistenceDao;

import model.Spedizione;

public interface SpedizioneDao {
	
	public void save(Spedizione spedizione); // Create

	public void update(Spedizione spedizione); // Update

	public void delete(String id_spedizione); // Delete
	

}
