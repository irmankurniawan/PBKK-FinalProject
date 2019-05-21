package id.kel8.catdogdaycare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import id.kel8.catdogdaycare.dao.TransaksiInterfaceDAO;
import id.kel8.catdogdaycare.model.Transaksi;

@Service
public class ServiceTransaksi implements ITransaksiService {

	@Autowired
	private TransaksiInterfaceDAO dao;
	
	@Override
	@Transactional
	public List<Transaksi> getAllTransaksi() {
		
		return dao.getAllTransaksi();
	}

	@Override
	@Transactional
	public Transaksi getTransaksi(Transaksi transaksi) {
		
		return dao.getTransaksi(transaksi);
	}

	@Override
	@Transactional
	public Transaksi getTransaksiById(int theId) {
		
		return dao.getTransaksiById(theId);
	}

	@Override
	@Transactional
	public List<Transaksi> getTransaksiByIdUser(int theId) {
		
		return dao.getTransaksiByIdUser(theId);
	}

	@Override
	@Transactional
	public void addTransaksi(Transaksi transaksi) {
		dao.addTransaksi(transaksi);
		
	}

	@Override
	@Transactional
	public void updateTransaksi(Transaksi transaksi) {
		dao.updateTransaksi(transaksi);
		
	}
	
}