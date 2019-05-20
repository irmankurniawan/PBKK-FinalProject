package id.kel8.catdogdaycare;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import id.kel8.catdogdaycare.model.Admin;
import id.kel8.catdogdaycare.service.IAdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private IAdminService adminService;

	@GetMapping("/")
	public String adminHomePage() {
		return "admin-home";
	}
	
	@GetMapping("/login")
	public String adminLoginPage(Model model, HttpSession httpSession) {
		Admin admin = (Admin) httpSession.getAttribute("admin");
		if(admin!=null) return "redirect:/admin-home";
		
		model.addAttribute("admin", new Admin());
		
		return "login-admin";
	}
	
	@GetMapping("/admin-list")
	public String adminListPage(Model model) {
		model.addAttribute("admins", adminService.getAdmins());
		return "admin-list";
	}
	
}
