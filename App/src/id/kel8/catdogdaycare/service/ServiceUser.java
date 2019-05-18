package id.kel8.catdogdaycare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import id.kel8.catdogdaycare.dao.UserInterfaceDAO;
import id.kel8.catdogdaycare.model.User;

@Service
public class ServiceUser implements IUserService {

	@Autowired
	private UserInterfaceDAO dao;
	
	@Override
	@Transactional
	public List<User> getUsers() {
		
		return dao.getUsers();
	}

	@Override
	@Transactional
	public void addUser(User user) {
		
		dao.addUser(user);
	}

	@Override
	@Transactional
	public User getUser(User user) {
		
		return dao.getUser(user);
	}

	@Override
	@Transactional
	public void updateUser(User user) {
		dao.updateUser(user);
		
	}

	@Override
	@Transactional
	public User getUserById(int theId) {
		
		return dao.getUserById(theId);
	}

}
