package id.kel8.catdogdaycare.dao;

import java.util.List;

import id.kel8.catdogdaycare.model.Pet;
import id.kel8.catdogdaycare.model.User;

public interface PetInterfaceDAO {
	public List<Pet> getPets();
	
	public void addPet(User user, Pet pet);
	public void updatePet(Pet pet);
	
	public Pet getPet(Pet pet);
	
	public Pet getPetById(int theId);
	public List<Pet> getPetByIdUser(int theId);

	public void deletePet(int petId);
}
