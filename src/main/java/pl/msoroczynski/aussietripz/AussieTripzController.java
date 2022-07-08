package pl.msoroczynski.aussietripz;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/tripz")
public class AussieTripzController {
    private final RatedAttractionRepository ratedAttractionRepository;
    private final AttractionRepository attractionRepository;

    public AussieTripzController(RatedAttractionRepository ratedAttractionRepository, AttractionRepository attractionRepository, PlanRepository planRepository) {
        this.ratedAttractionRepository = ratedAttractionRepository;
        this.attractionRepository = attractionRepository;
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register() {
        return "/register";
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
