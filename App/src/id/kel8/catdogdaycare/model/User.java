package id.kel8.catdogdaycare.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="user")
public class User {
	
	@Id
	@Column(name="user_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;
	
	@Column(name="user_nama")
	private String userNama;
	
	@Column(name="user_email")
	private String userEmail;
	
	@Column(name="user_hp")
	private String userHp;
	
	@Column(name="user_password")
	private String userPassword;
	
	@OneToMany(fetch=FetchType.EAGER ,cascade=CascadeType.ALL)
	@JoinColumn(name="pet_id_pemilik", referencedColumnName = "user_id", nullable = false, insertable=false, updatable=false)
	private List<Pet> pets;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public String getUserNama() {
		return userNama;
	}
	public void setUserNama(String userNama) {
		this.userNama = userNama;
	}
	
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	public String getUserHp() {
		return userHp;
	}
	public void setUserHp(String userHp) {
		this.userHp = userHp;
	}
	
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	
	//convenience method
	public void addPet(Pet thePet) {
		if(pets == null) pets = new ArrayList<>();
		
		pets.add(thePet);
		
	}
	
	public List<Pet> getPets() {
		return pets;
	}
	
	public void setPets(List<Pet> pets) {
		this.pets = pets;
	}
	
	public User() {
	}
	
}