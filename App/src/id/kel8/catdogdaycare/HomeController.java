package id.kel8.catdogdaycare;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import id.kel8.catdogdaycare.model.User;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String showHomePage() {
		return "home";
	}

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView showLoginPage() {
		return new ModelAndView("login","user", new User());
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public ModelAndView showRegistrationPage() {
		return new ModelAndView("register","user", new User());
	}
}
