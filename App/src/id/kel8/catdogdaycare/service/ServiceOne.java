package id.kel8.catdogdaycare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import id.kel8.catdogdaycare.dao.InterfaceDAO;
import id.kel8.catdogdaycare.model.User;

@Service
public class ServiceOne implements IService {

	@Autowired
	private InterfaceDAO dao;
	
	@Override
	@Transactional
	public List<User> tes() {
		
		return dao.tes();
	}

}
