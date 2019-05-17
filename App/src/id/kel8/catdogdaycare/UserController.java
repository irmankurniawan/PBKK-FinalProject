package id.kel8.catdogdaycare;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import id.kel8.catdogdaycare.model.User;
import id.kel8.catdogdaycare.service.IUserService;

@Controller
public class UserController {
	
	@Autowired
	private IUserService userService;
	
	@PostMapping("/user-list")
	public String loginPage(Model model) {
		model.addAttribute("users", userService.getUsers());
		return "user-list";
	}
	
	@PostMapping("/user-check")
	public String userCheck(User user, HttpSession httpSession, Model model) {
		
		User hasil = userService.getUser(user);
		if(hasil==null) {
			return "redirect:/login";
		}
		
		httpSession.setAttribute("user", hasil);
		
		return "redirect:/user-home";
	}
	
	@GetMapping("/user-home")
	public String userHome(Model model, HttpSession httpSession) {
		User user = (User) httpSession.getAttribute("user");
		//jika http session tidak tersimpan, maka redirect ke home atau login
		if(user==null) {
			
			return "redirect:/login";
		}
		return "user-home";
	}
	
}
