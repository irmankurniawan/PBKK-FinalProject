package id.kel8.catdogdaycare.service;

import java.util.List;

import id.kel8.catdogdaycare.model.Admin;

public interface IAdminService {
	public List<Admin> getAdmins();
	public Admin getAdmin(Admin admin);
}
