package id.kel8.catdogdaycare.dao;

import java.util.List;

import id.kel8.catdogdaycare.model.User;

public interface UserInterfaceDAO {
	public List<User> getUsers();

	public void addUser(User user);

	public User getUser(User user);
}
