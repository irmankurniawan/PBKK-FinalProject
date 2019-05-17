package id.kel8.catdogdaycare.service;

import java.util.List;

import id.kel8.catdogdaycare.model.*;

public interface IUserService {
	public List<User> getUsers();

	public void addUser(User user);

	public User getUser(User user);
}
