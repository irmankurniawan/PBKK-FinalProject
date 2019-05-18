package id.kel8.catdogdaycare;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import id.kel8.catdogdaycare.model.Pet;
import id.kel8.catdogdaycare.model.User;
import id.kel8.catdogdaycare.service.IPetService;
import id.kel8.catdogdaycare.service.IUserService;

@Controller
public class PetController {
	
	@Autowired
	private IPetService petService;
	
	@Autowired
	private IUserService userService;
	
	@GetMapping("/user-pet")
	public String petListPage(@RequestParam("uid") int theId, Model model, HttpSession httpSession) {
		User user = (User) httpSession.getAttribute("user");
		if(user==null || user.getUserId()!=theId) return "redirect:/login";
		
		model.addAttribute("pets", petService.getPetByIdUser(theId));
		return "user-pet";
	}
	
	@GetMapping("/pet-edit")
	public String petEditPage(@RequestParam("id") int petId, Model model, HttpSession httpSession) {
		User user = (User) httpSession.getAttribute("user");
		Pet pete = petService.getPetById(petId);
		if(user==null) return "redirect:/login";
		
		model.addAttribute("pet", pete);
		model.addAttribute("modelPet", new Pet());
		return "pet-edit";
	}
	
	@PostMapping("/updatePet")
	public String updatePet(@ModelAttribute("modelPet") Pet pet) {
		petService.updatePet(pet);
		return "redirect:/user-pet";
	}
	
}
