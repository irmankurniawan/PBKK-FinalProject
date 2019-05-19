package id.kel8.catdogdaycare.dao;

import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import id.kel8.catdogdaycare.model.Pet;
import id.kel8.catdogdaycare.model.User;

@Repository
public class PetDAO implements PetInterfaceDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Pet> getPets() {
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Pet> query = currentSession.createQuery("from Pet", Pet.class);
		
		List<Pet> pets = query.getResultList();
		return pets;
	}

	@Override
	public void addPet(User user, Pet pet) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		user.addPet(pet);
		currentSession.save(pet);
		
		int uid = user.getUserId();
		int pid = pet.getPetId();
		
		Query que = currentSession.createQuery("update Pet set pet_id_pemilik=:_pemilikId where petId=:_petId");
		que.setParameter("_petId", pid);
		que.setParameter("_pemilikId", uid);
		que.executeUpdate();
	}

	@Override
	public void updatePet(Pet pet) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(pet);
	}

	@Override
	public Pet getPet(Pet pet) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Pet getPetById(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Pet hasil = currentSession.get(Pet.class, theId);
		return hasil;
	}

	@Override
	public List<Pet> getPetByIdUser(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		List<Pet> hasil = null;
		User que = currentSession.get(User.class, theId);
		hasil = que.getPets();
		return hasil;
	}

}
