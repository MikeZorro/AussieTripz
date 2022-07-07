package pl.msoroczynski.aussietripz;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/tripz/user")
public class UserInterfaceController {
    private final UserRepository userRepository;
    private final PlanRepository planRepository;
    private final AttractionRepository attractionRepository;
    private final StateRepository stateRepository;
    private final RatedAttractionRepository ratedAttractionRepository;

    public UserInterfaceController(UserRepository userRepository, PlanRepository planRepository, AttractionRepository attractionRepository, StateRepository stateRepository, RatedAttractionRepository ratedAttractionRepository) {
        this.userRepository = userRepository;
        this.planRepository = planRepository;
        this.attractionRepository = attractionRepository;
        this.stateRepository = stateRepository;
        this.ratedAttractionRepository = ratedAttractionRepository;
    }
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String home() {
        return "/index";
    }


    @RequestMapping(value = "/userPlans", method = RequestMethod.GET)
    public String userPlans(Model model) {
        User user = new User();
        user.setId(1L);
        model.addAttribute("plans", planRepository.findAllByUser(user));
        return "/plans2";
    }

    @RequestMapping(value = "/plan-details/{id}", method = RequestMethod.GET)
    public String planDetails(@PathVariable String id, Model model) {
        List<Plan> optionalPlan = planRepository.findFirstById(Long.parseLong(id));
        model.addAttribute("plan", optionalPlan);
        List<Attraction> attractions = attractionRepository.findAllByPlan(optionalPlan.get(0));
        model.addAttribute("attractions", attractions);
        return "/plan-details";
    }
    @RequestMapping(value = "/attractions", method = RequestMethod.GET)
    public String allAttractions(Model model) {
        model.addAttribute("attractions1", attractionRepository.findAllByStateId(1l));
        model.addAttribute("attractions2", attractionRepository.findAllByStateId(2l));
        model.addAttribute("attractions3", attractionRepository.findAllByStateId(3l));
        model.addAttribute("attractions4", attractionRepository.findAllByStateId(4l));
        model.addAttribute("attractions5", attractionRepository.findAllByStateId(5l));
        model.addAttribute("attractions6", attractionRepository.findAllByStateId(6l));
        model.addAttribute("attractions7", attractionRepository.findAllByStateId(7l));
        model.addAttribute("attractions8", attractionRepository.findAllByStateId(8l));
        return "/attractions";
    }

//    @RequestMapping(value = "/attractions", method = RequestMethod.POST)
//    public String rateAttraction(@Valid RatedAttraction ratedAttraction, Model model) {
//
//    ratedAttractionRepository.save(ratedAttraction);
//        return "redirect:/tripz/user/attractions";
//    }

    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String test(Model model) {
        User user = new User();
        user.setId(1L);
        model.addAttribute("plans", planRepository.findAllByUser(user));
        return "/plans2";
    }
    @RequestMapping(value = "/attractions/{id}", method = RequestMethod.GET)
    public String attractionsSA(@PathVariable Long id, Model model) {
        model.addAttribute("state", stateRepository.findById(id).get());
        model.addAttribute("attractions", attractionRepository.findAllByStateId(id));
        return "/attractionsbystate";
    }

    @RequestMapping(value = "/plan/add", method = RequestMethod.GET)
    public String planAdd() {
        return "/planform";
    }


}
