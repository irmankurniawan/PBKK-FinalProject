package id.kel8.catdogdaycare;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import id.kel8.catdogdaycare.model.User;
import id.kel8.catdogdaycare.service.IUserService;

@Controller
public class HomeController {
	
	@Autowired
	private IUserService service;
	
	@RequestMapping("/")
	public String showHomePage() {
		return "home";
	}

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginPage(Model model) {
		model.addAttribute("user", new User());
		
		model.addAttribute("users", service.getUsers());
		return "login";
	}

	
	@GetMapping("/register")
	public String showRegistrationPage(Model model) {
		User theUser = new User();
		model.addAttribute("user", theUser);
		return "register";
	}
	
	@PostMapping("/addUser")
	public String addUser(@ModelAttribute("user") User user) {
		service.addUser(user);
		return "redirect:/user-list";
	}
}
