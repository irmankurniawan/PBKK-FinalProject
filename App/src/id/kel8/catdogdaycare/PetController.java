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
import id.kel8.catdogdaycare.model.Transaksi;
import id.kel8.catdogdaycare.model.User;
import id.kel8.catdogdaycare.service.IPetService;
import id.kel8.catdogdaycare.service.ITransaksiService;
import id.kel8.catdogdaycare.service.IUserService;

@Controller
public class PetController {
	
	@Autowired
	private IPetService petService;
	
	@Autowired
	private IUserService userService;
	
	@Autowired
	private ITransaksiService transaksiService;
	
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
		if(user==null) return "redirect:/login";
		
		Pet pete = petService.getPetById(petId);
		model.addAttribute("pet", pete);
		model.addAttribute("modelPet", new Pet());
		return "pet-edit";
	}
	
	@GetMapping("/pet-delete")
	public String petDelete(@RequestParam("id") int petId, Model model, HttpSession httpSession) {
		User user = (User) httpSession.getAttribute("user");
		if(user==null) return "redirect:/login";
		
		petService.deletePet(petId);
		
		return "redirect:/user-pet?uid="+user.getUserId();
	}
	
	@GetMapping("/pet-add")
	public String addPetPage(Model model, HttpSession httpSession) {
		User user = (User) httpSession.getAttribute("user");
		if(user==null) return "redirect:/login";
		
		Pet pete = new Pet();

		model.addAttribute("modelPet", pete);
		return "pet-add";
	}
	
	@GetMapping("/pet-titip")
	public String titipPet(@RequestParam("pid") int pet_id, @RequestParam("uid") int user_id, Model model, HttpSession httpSession) {
		User user = (User) httpSession.getAttribute("user");
		if(user==null) return "redirect:/login";

		model.addAttribute("petId", pet_id);
		model.addAttribute("userId", user_id);
		model.addAttribute("modelTransaksi", new Transaksi());
		return "transaksi-add";
	}
	
	
	
	@PostMapping("/addPet")
	public String addPet(@ModelAttribute("pet") Pet pet, HttpSession httpSession) {
		User user = (User) httpSession.getAttribute("user");
		if(user==null) return "redirect:/login";
		
		User user2 = userService.getUserById(user.getUserId());
		
		petService.addPet(user2, pet);
		return "redirect:/user-pet?uid="+user.getUserId();
	}
	
	@PostMapping("/updatePet")
	public String updatePet(@ModelAttribute("modelPet") Pet pet, HttpSession httpSession) {
		User user = (User) httpSession.getAttribute("user");
		if(user==null) return "redirect:/login";
		
		//System.out.println(pet.toString());
		petService.updatePet(pet);
		return "redirect:/user-pet?uid="+user.getUserId();
	}
	
}
