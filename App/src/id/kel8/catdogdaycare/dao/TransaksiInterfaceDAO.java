package id.kel8.catdogdaycare.dao;

import java.util.List;

import id.kel8.catdogdaycare.model.Transaksi;

public interface TransaksiInterfaceDAO {
	public List<Transaksi> getAllTransaksi();
	
	public Transaksi getTransaksi(Transaksi transaksi);
	
	public Transaksi getTransaksiById(int theId);
	
	public List<Transaksi> getTransaksiByIdUser(int theId);

	public void addTransaksi(Transaksi transaksi);

	public void updateTransaksi(Transaksi transaksi);
}
