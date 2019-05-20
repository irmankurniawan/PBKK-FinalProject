package id.kel8.catdogdaycare;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@GetMapping("/transaksi-list")
	public String listTransaksi(Model model) {
		List<Transaksi> transaksis = transaksiService.getAllTransaksi();
		model.addAttribute("transaksis", transaksis);
		return "transaksi-list";
	}
}
