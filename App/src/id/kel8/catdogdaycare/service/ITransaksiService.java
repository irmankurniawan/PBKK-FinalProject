package id.kel8.catdogdaycare.service;

import java.util.List;

import id.kel8.catdogdaycare.model.Transaksi;

public interface ITransaksiService {
	public List<Transaksi> getAllTransaksi();
	
	public Transaksi getTransaksi(Transaksi transaksi);
	
	public Transaksi getTransaksiById(int theId);
	
	public List<Transaksi> getTransaksiByIdUser(int theId);
	
	public void addTransaksi(Transaksi transaksi, int petid, int userid);
	public void updateTransaksi(Transaksi transaksi);

	public void titipPet(int pet_id, int user_id);
}