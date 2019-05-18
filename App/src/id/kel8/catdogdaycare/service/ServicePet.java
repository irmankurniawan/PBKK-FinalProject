package id.kel8.catdogdaycare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import id.kel8.catdogdaycare.dao.PetInterfaceDAO;
import id.kel8.catdogdaycare.model.Pet;

@Service
public class ServicePet implements IPetService {

	@Autowired
	private PetInterfaceDAO dao;
	
	@Override
	@Transactional
	public List<Pet> getPets() {
		// TODO Auto-generated method stub
		return dao.getPets();
	}

	@Override
	@Transactional
	public void addPet(Pet pet) {
		// TODO Auto-generated method stub

	}

	@Override
	@Transactional
	public void updatePet(Pet pet) {
		// TODO Auto-generated method stub

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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public List<Pet> getPetByIdUser(int theId) {
		return dao.getPetByIdUser(theId);
	}

}
