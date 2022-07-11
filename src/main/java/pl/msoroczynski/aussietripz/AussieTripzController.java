package pl.msoroczynski.aussietripz;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
@RequestMapping("/tripz")
public class AussieTripzController {
    private final RatedAttractionRepository ratedAttractionRepository;
    private final AttractionRepository attractionRepository;
    private final UserRepository userRepository;

    public AussieTripzController(RatedAttractionRepository ratedAttractionRepository, AttractionRepository attractionRepository, PlanRepository planRepository, UserRepository userRepository) {
        this.ratedAttractionRepository = ratedAttractionRepository;
        this.attractionRepository = attractionRepository;
        this.userRepository = userRepository;
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(Model model) {
        model.addAttribute("user", new User());
        return "/register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String save(@Valid User user, BindingResult result, HttpServletRequest request, HttpServletResponse response) {
        if(result.hasErrors()){
            return "/register";
        }
        userRepository.save(user);
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        return "redirect:/tripz/user/userpanel";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "redirect:/tripz/user/userPlans";
    }

    @RequestMapping(value = "/topattractions", method = RequestMethod.GET)
    public String listAttractions(Model model) {
        model.addAttribute("attractions", ratedAttractionRepository.top10AttractionsByRating());
       //model.addAttribute("attractions", attractionRepository.findAll());
        return "/topattractions";
    }

}
