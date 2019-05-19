package id.kel8.catdogdaycare.dao;

import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



import id.kel8.catdogdaycare.model.Transaksi;
import id.kel8.catdogdaycare.model.User;

@Repository
public class TransaksiDAO implements TransaksiInterfaceDAO {

	@Autowired
	private SessionFactory sessionFactory;
	


	@Override
	public List<Transaksi> getAllTransaksi() {
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Transaksi> query = currentSession.createQuery("from Transaksi", Transaksi.class);
		
		List<Transaksi> transaksi = query.getResultList();
		return transaksi;
	}

	@Override
	public void getTransaksi(Transaksi transaksi) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.save(transaksi);
	}
	
	@Override
	public Transaksi getTransaksiById(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaksi hasil = currentSession.get(Transaksi.class, theId);
		return hasil;
	}

	
	
	@Override
	public List <Transaksi> getTransaksiByIdUser(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Transaksi> query = currentSession.createQuery("from Transaksi", Transaksi.class);
		
		List<Transaksi> transaksi = query.getResultList();
		return Transaksi;
	}

}
