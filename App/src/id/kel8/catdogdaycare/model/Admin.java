package id.kel8.catdogdaycare.model;

import javax.persistence.*;

@Entity
@Table(name="admin")
public class Admin {
	@Id
	@Column(name="admin_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int adminId;
	
	@Column(name="admin_nama")
	private String adminNama;
	
	@Column(name="admin_email")
	private String adminEmail;
	
	@Column(name="admin_password")
	private String adminPassword;

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public String getAdminNama() {
		return adminNama;
	}

	public void setAdminNama(String adminNama) {
		this.adminNama = adminNama;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

	public Admin() {
	}

	public Admin(String adminNama, String adminEmail, String adminPassword) {
		this.adminNama = adminNama;
		this.adminEmail = adminEmail;
		this.adminPassword = adminPassword;
	}
	
}
