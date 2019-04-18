package id.kel8.catdogdaycare;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import id.kel8.catdogdaycare.model.Member;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String showHomePage() {
		return "home";
	}

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView showLoginPage() {
		return new ModelAndView("login","member", new Member());
	}
	
	@RequestMapping("/register")
	public String showRegistrationPage() {
		return "register";
	}
}
