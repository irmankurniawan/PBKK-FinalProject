package id.kel8.catdogdaycare;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import id.kel8.catdogdaycare.model.Admin;
import id.kel8.catdogdaycare.model.Pet;
import id.kel8.catdogdaycare.model.Transaksi;
import id.kel8.catdogdaycare.model.User;
import id.kel8.catdogdaycare.service.IPetService;
import id.kel8.catdogdaycare.service.ITransaksiService;
import id.kel8.catdogdaycare.service.IUserService;

@Controller
public class TransaksiController {

	@Autowired
	private IPetService petService;
	
	@Autowired
	private IUserService userService;
	
	@Autowired
	private ITransaksiService transaksiService;
	
	// bind date format
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    sdf.setLenient(true);
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}
		
	@GetMapping("/transaksi-list")
	public String listTransaksi(Model model, HttpSession httpSession) {
		List<Transaksi> transaksis = transaksiService.getAllTransaksi();
		model.addAttribute("transaksis", transaksis);
		return "transaksi-list";
	}
	
	@GetMapping("/transaksi-edit")
	public String editTransaksi(@RequestParam("id") int theId, Model model, HttpSession httpSession) {
		Admin admin = (Admin) httpSession.getAttribute("admin");
		if(admin==null) return "redirect:/admin/login";
		
		Transaksi transaksi = transaksiService.getTransaksiById(theId);
		model.addAttribute("transaksi", transaksi);
		model.addAttribute("modelTransaksi", new Transaksi());
		
		return "transaksi-edit";
	}
	
	@PostMapping("/updateTransaksi")
	public String updateTrans(@ModelAttribute("modelTransaksi") Transaksi transaksi, HttpSession httpSession,
			@RequestParam("trId") int id,
			@RequestParam("trTglCekin") Date tgl_cekin,
			@RequestParam("trTglCekout") Date tgl_cekout,
			@RequestParam("trTotalBayar") int total_bayar,
			@RequestParam("trStatusBayar") String status_bayar) throws ParseException {
		
		Admin admin = (Admin) httpSession.getAttribute("admin");
		if(admin==null) return "redirect:/admin/login";
		
//		System.out.println(tgl_cekin);
//		
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//	    Date tglCekin = sdf.parse(tgl_cekin);
//	    Date tglCekout = sdf.parse(tgl_cekout);
//		
//	    System.out.println(tglCekin);
	    
	    Transaksi theTransaksi = new Transaksi();
	    theTransaksi.setTrId(id);
	    theTransaksi.setTrTglCekin(tgl_cekin);
	    theTransaksi.setTrTglCekout(tgl_cekout);
	    theTransaksi.setTrTotalBayar(total_bayar);
	    theTransaksi.setTrStatusBayar(status_bayar);
	    
		transaksiService.updateTransaksi(theTransaksi);
		return "redirect:/transaksi-list";
	}
	
}
