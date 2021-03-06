package id.kel8.catdogdaycare.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="transaksi")
public class Transaksi {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="tr_id")
	private int trId;
	
	@Column(name="tr_tgl_cekin")
	@Temporal(TemporalType.DATE)
	private Date trTglCekin;
	
	@Column(name="tr_tgl_cekout")
	@Temporal(TemporalType.DATE)
	private Date trTglCekout;
	
	@Column(name="tr_total_bayar")
	private int trTotalBayar;
	
	@Column(name="tr_status_bayar")
	private String trStatusBayar;
	
	@ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE,CascadeType.DETACH, CascadeType.REFRESH})
	@JoinColumn(name="tr_id_user", nullable = true, insertable=false, updatable=false)
	private User user;
	
	@ManyToOne(cascade = {CascadeType.PERSIST, CascadeType.MERGE,CascadeType.DETACH, CascadeType.REFRESH})
	@JoinColumn(name="tr_id_pet", nullable = true, insertable=false, updatable=false)
	private Pet pet;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Pet getPet() {
		return pet;
	}

	public void setPet(Pet pet) {
		this.pet = pet;
	}

	public int getTrId() {
		return trId;
	}
	
	public void setTrId(int trId) {
		this.trId = trId;
	}
	
	public Date getTrTglCekin() {
		return trTglCekin;
	}
	
	public void setTrTglCekin(Date trTglCekin) {
		this.trTglCekin = trTglCekin;
	}
	
	public Date getTrTglCekout() {
		return trTglCekout;
	}
	
	public void setTrTglCekout(Date trTglCekout) {
		this.trTglCekout = trTglCekout;
	}
	
	public int getTrTotalBayar() {
		return trTotalBayar;
	}
	
	public void setTrTotalBayar(int trTotalBayar) {
		this.trTotalBayar = trTotalBayar;
	}
	
	public String getTrStatusBayar() {
		return trStatusBayar;
	}
	
	public void setTrStatusBayar(String trStatusBayar) {
		this.trStatusBayar = trStatusBayar;
	}
	
	public Transaksi(Date trTglCekin, Date trTglCekout, int trTotalBayar, String trStatusBayar) {
		this.trTglCekin = trTglCekin;
		this.trTglCekout = trTglCekout;
		this.trTotalBayar = trTotalBayar;
		this.trStatusBayar = trStatusBayar;
	}
	
	public Transaksi() {
	}
	
	@Override
	public String toString() {
		return "Transaksi [trId=" + trId + ", trTglCekin=" + trTglCekin + ", trTglCekout=" + trTglCekout
				+ ", trTotalBayar=" + trTotalBayar + ", trStatusBayar=" + trStatusBayar + "]";
	}
	
}

