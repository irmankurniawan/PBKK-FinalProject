package id.kel8.catdogdaycare;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import id.kel8.catdogdaycare.model.User;
import id.kel8.catdogdaycare.service.IUserService;

@Controller
public class UserController {
	
	@Autowired
	private IUserService service;
	
	@PostMapping("/user-list")
	public String loginPage(Model model) {
		model.addAttribute("users", service.getUsers());
		return "user-list";
	}
	
}
