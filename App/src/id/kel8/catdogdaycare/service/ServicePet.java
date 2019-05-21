package id.kel8.catdogdaycare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import id.kel8.catdogdaycare.dao.PetInterfaceDAO;
import id.kel8.catdogdaycare.dao.UserInterfaceDAO;
import id.kel8.catdogdaycare.model.Pet;
import id.kel8.catdogdaycare.model.User;

@Service
public class ServicePet implements IPetService {

	@Autowired
	private PetInterfaceDAO dao;
	
	@Autowired
	private UserInterfaceDAO userDAO;
	
	@Override
	@Transactional
	public List<Pet> getPets() {
		// TODO Auto-generated method stub
		return dao.getPets();
	}

	@Override
	@Transactional
	public void addPet(User user, Pet pet) {
		dao.addPet(user, pet);
	}

	@Override
	@Transactional
	public void updatePet(Pet pet) {
		dao.updatePet(pet);

	}

	@Override
	@Transactional
	public Pet getPet(Pet pet) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public Pet getPetById(int theId) {
		return dao.getPetById(theId);
	}

	@Override
	@Transactional
	public List<Pet> getPetByIdUser(int theId) {
		return dao.getPetByIdUser(theId);
	}

	@Override
	@Transactional
	public void deletePet(int petId) {
		dao.deletePet(petId);
		
	}

}
