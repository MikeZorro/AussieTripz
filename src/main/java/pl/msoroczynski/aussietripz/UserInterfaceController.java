package pl.msoroczynski.aussietripz;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

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


    @RequestMapping(value = "/userpanel", method = RequestMethod.GET)
    public String user(Model model, HttpServletRequest request, HttpServletResponse response ) {
        HttpSession session = request.getSession();
        model.addAttribute("user", session.getAttribute("user"));
        return "/userpanel";
    }

    @RequestMapping(value = "/userPlans", method = RequestMethod.GET)
    public String userPlans(Model model,HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
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

    @RequestMapping(value = "/plan-adding/{id}", method = RequestMethod.GET)
    public String planAddingAttractions(@PathVariable String id, Model model) {
        List<Plan> optionalPlan = planRepository.findFirstById(Long.parseLong(id));
        Plan plan = optionalPlan.get(0);
        model.addAttribute("plan", plan);
        List<Attraction> remaining = attractionRepository.findAllNotInaPlanId(plan);
        model.addAttribute("attractions", remaining);
        return "/plan-adding";
    }

    @RequestMapping(value = "/plan-adding/{id}", method = RequestMethod.POST)
    public String planAddingAttraction(@PathVariable Long id, Plan plan) {
       List <Attraction> updatedAttractons = plan.getAttractions();
       Optional<Plan> optional = planRepository.findById(id);
        Plan planToBeUpdated = optional.get();
        List <Attraction> toBeUpdated = planToBeUpdated.getAttractions();
        List <Attraction> result = Stream.concat(updatedAttractons.stream(), toBeUpdated.stream())
                        .collect(Collectors.toList());
        planToBeUpdated.setAttractions(result);
        planRepository.save(planToBeUpdated);
        return "redirect:/tripz/user/userPlans";
    }

    @RequestMapping(value = "/attractions", method = RequestMethod.GET)
    public String allAttractions(Model model) {
        model.addAttribute("attractions", attractionRepository.findAll());
        model.addAttribute("ratedAttraction", new RatedAttraction());
        return "/attractions";
    }

    @RequestMapping(value = "/attractions", method = RequestMethod.POST)
    public String rateAttraction(@Valid RatedAttraction ratedAttraction,  BindingResult result) {
        if(result.hasErrors()){
            return "redirect:/tripz/user/attractions";
        }
        ratedAttractionRepository.save(ratedAttraction);
        return "redirect:/tripz/user/attractions";
    }

    @RequestMapping(value = "/attractions/{id}", method = RequestMethod.GET)
    public String attractionsSA(@PathVariable Long id, Model model) {
        model.addAttribute("state", stateRepository.findById(id).get());
        model.addAttribute("attractions", attractionRepository.findAllByStateId(id));
        return "/attractionsbystate";
    }

    @RequestMapping(value = "/plan/add", method = RequestMethod.GET)
    public String planAdd(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        //User user = (User) session.getAttribute("user");
        User user = new User();
        user.setLogin("Dziamdziak");
        user.setId(10l);
        model.addAttribute("user", user);
        model.addAttribute("plan", new Plan());
        return "/planform";
    }

    @RequestMapping(value = "/plan/add", method = RequestMethod.POST)
    public String planAdd(@Valid Plan plan, BindingResult result) {
        if(result.hasErrors()){
            return "/planform";
        }
        planRepository.save(plan);
        return "redirect:/tripz/user/userPlans";
    }
    @RequestMapping(value = "/states", method = RequestMethod.GET)
    public String allStates(Model model) {
        model.addAttribute("states", stateRepository.findAll());
        return "/states";
    }

}
