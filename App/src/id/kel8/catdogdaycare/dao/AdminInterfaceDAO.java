package id.kel8.catdogdaycare.dao;

import java.util.List;

import id.kel8.catdogdaycare.model.Admin;

public interface AdminInterfaceDAO {
	public List<Admin> getAdmins();
	public Admin getAdmin(Admin admin);
}
