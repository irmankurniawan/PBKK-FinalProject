package id.kel8.catdogdaycare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import id.kel8.catdogdaycare.dao.AdminInterfaceDAO;
import id.kel8.catdogdaycare.model.Admin;

@Service
public class ServiceAdmin implements IAdminService {

	@Autowired
	private AdminInterfaceDAO dao;
	
	@Override
	@Transactional
	public List<Admin> getAdmins() {

		return dao.getAdmins() ;
	}

	@Override
	@Transactional
	public Admin getAdmin(Admin admin) {

		return dao.getAdmin(admin);
	}

}
