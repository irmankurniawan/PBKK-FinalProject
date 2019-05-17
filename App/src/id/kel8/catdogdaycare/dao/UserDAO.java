package id.kel8.catdogdaycare.dao;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



import id.kel8.catdogdaycare.model.User;

@Repository
public class UserDAO implements UserInterfaceDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<User> getUsers() {
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<User> query = currentSession.createQuery("from User", User.class);
		
		List<User> users = query.getResultList();
		return users;
	}

	@Override
	public void addUser(User user) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.save(user);
	}

}
