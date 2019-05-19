package id.kel8.catdogdaycare.model;

import javax.persistence.*;

@Entity
@Table(name="transaksi")
public class Transaksi {
	
	@Id
	@Column(name="transaksi_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int transaksiId;
	
	@Column(name="lama_inap")
	private int lamaInap;
	
	@Column(name="total_biaya")
	private int totalBiaya;
	
	@Column(name="status_pembayaran")
	private String statusPembayaran;
	
	public int getTransaksiId() {
		return transaksiId;
	}

	public void setTransaksiId(int transaksiId) {
		this.transaksiId = transaksiId;
	}

	public int getLamaInap() {
		return lamaInap;
	}

	public void setLamaInap(int lamaInap) {
		this.lamaInap = lamaInap;
	}

	public int getTotalBiaya() {
		return totalBiaya;
	}

	public void setTotalBiaya(int totalBiaya) {
		this.totalBiaya = totalBiaya;
	}

	public String getStatusPembayaran() {
		return statusPembayaran;
	}

	public void setStatusPembayaran(String statusPembayaran) {
		this.statusPembayaran = statusPembayaran;
	}

	public 	Transaksi() {
	}

	public Transaksi(int lamaInap, int totalBiaya, String statusPembayaran) {
		this.lamaInap = lamaInap;
		this.totalBiaya = totalBiaya;
		this.statusPembayaran = statusPembayaran;
	}

	@Override
	public String toString() {
		return "Transaksi [transaksiId=" + transaksiId + ", lamaInap=" + lamaInap + ", totalBiaya=" + totalBiaya + ", statusPembayaran=" + statusPembayaran
				+ "]";
	}
}
