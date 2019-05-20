package id.kel8.catdogdaycare.dao;

import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import id.kel8.catdogdaycare.model.Admin;

@Repository
public class AdminDAO implements AdminInterfaceDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Admin> getAdmins() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Admin> query = currentSession.createQuery("from Admin", Admin.class);
		
		List<Admin> admins = query.getResultList();
		return admins;
	}

	@Override
	public Admin getAdmin(Admin admin) {
		Session currentSession = sessionFactory.getCurrentSession();
		Admin hasil = null;
		String que = "from Admin where adminEmail=:admin_email and adminPassword=:admin_password";
		Query<Admin> query = currentSession.createQuery(que);
        query.setParameter("admin_email", admin.getAdminEmail());
		query.setParameter("admin_password", admin.getAdminPassword());
		try {
			hasil = query.getSingleResult();
		} catch (NoResultException e) {
			// pass
		}
		return hasil;
	}

}
