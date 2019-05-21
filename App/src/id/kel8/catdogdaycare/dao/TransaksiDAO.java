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
	public Transaksi getTransaksiById(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Transaksi hasil = currentSession.get(Transaksi.class, theId);
		return hasil;
	}
	
	@Override
	public List<Transaksi> getTransaksiByIdUser(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		List<Transaksi> hasil = null;
		User que = currentSession.get(User.class, theId);
		hasil = que.getTransaksi();
		return hasil;
	}

	@Override
	public Transaksi getTransaksi(Transaksi transaksi) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addTransaksi(Transaksi transaksi, int petid, int userid) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.save(transaksi);
		
		//updating user dan pet
		int trid = transaksi.getTrId();
		int pid = petid;
		int uid = userid;
		
		Query que = currentSession.createQuery("update Transaksi set tr_id_user=:_iduser, tr_id_pet=:_idpet where tr_id=:_idtr");
		que.setParameter("_idpet", pid);
		que.setParameter("_iduser", uid);
		que.setParameter("_idtr", trid);
		que.executeUpdate();
	}

	@Override
	public void updateTransaksi(Transaksi transaksi) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(transaksi);
	}

	@Override
	public void titipPet(int pet_id, int user_id) {
		Session currentSession = sessionFactory.getCurrentSession();
		
	}

}
