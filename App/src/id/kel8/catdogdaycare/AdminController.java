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

import id.kel8.catdogdaycare.model.Admin;
import id.kel8.catdogdaycare.model.Transaksi;
import id.kel8.catdogdaycare.model.User;
import id.kel8.catdogdaycare.service.IAdminService;
import id.kel8.catdogdaycare.service.ITransaksiService;
import id.kel8.catdogdaycare.service.IUserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private IAdminService adminService;
	
	@Autowired
	private IUserService userService;
	
	@Autowired
	private ITransaksiService transaksiService;

	@GetMapping("")
	public String adminHomePage(HttpSession httpSession) {
		Admin admin = (Admin) httpSession.getAttribute("admin");
		if(admin==null) return "redirect:/admin/login";
		return "redirect:admin/home";
	}
	
	@GetMapping("/")
	public String adminHomePage2(HttpSession httpSession) {
		Admin admin = (Admin) httpSession.getAttribute("admin");
		if(admin==null) return "redirect:/admin/login";
		return "redirect:home";
	}
	
	@GetMapping("/home")
	public String homePage(Model model, HttpSession httpSession) {
		Admin admin = (Admin) httpSession.getAttribute("admin");
		if(admin==null) return "redirect:/admin/login";
		
		model.addAttribute("admin", admin);
		return "admin-home";
	}
	
	@GetMapping("/login")
	public String adminLoginPage(Model model, HttpSession httpSession) {
		httpSession.setAttribute("user", null);
		Admin admin = (Admin) httpSession.getAttribute("admin");
		if(admin!=null) return "redirect:/admin-home";
		
		model.addAttribute("admin", new Admin());
		
		return "login-admin";
	}
	
	@PostMapping("/check")
	public String adminCheck(Admin admin, HttpSession httpSession, Model model) {
		
		Admin hasil = adminService.getAdmin(admin);
		if(hasil==null) return "redirect:/admin/login";
		
		httpSession.setAttribute("admin", hasil);
		
		return "redirect:/admin/home";
	}
	
	@GetMapping("/logout")
	public String logOut(HttpSession httpSession) {
		httpSession.setAttribute("admin", null);
		return "redirect:/admin";
	}
	
	@GetMapping("/member-list")
	public String memberListPage(Model model, HttpSession httpSession) {
		Admin admin = (Admin) httpSession.getAttribute("admin");
		if(admin==null) return "redirect:/admin/login";
		
		model.addAttribute("users", userService.getUsers());
		return "user-list";
	}
	
	@GetMapping("/transaksi-list")
	public String listTransaksi(Model model) {
		List<Transaksi> transaksis = transaksiService.getAllTransaksi();
		model.addAttribute("transaksis", transaksis);
		return "transaksi-list";
	}
	
	@GetMapping("/admin-list")
	public String adminListPage(Model model) {
		model.addAttribute("admins", adminService.getAdmins());
		return "admin-list";
	}
	
}
