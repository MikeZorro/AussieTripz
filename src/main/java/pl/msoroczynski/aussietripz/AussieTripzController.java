package pl.msoroczynski.aussietripz;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/tripz")
public class AussieTripzController {
    private final RatedAttractionRepository ratedAttractionRepository;
    private final AttractionRepository attractionRepository;
    private final UserRepository userRepository;

    public String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }
    public boolean checkPassword(String password, String hashedPassword) { return BCrypt.checkpw(password,hashedPassword);}


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
    public String save(@Valid User user, BindingResult result, HttpServletRequest request) {
        if(result.hasErrors()){
            return "/register";
        }
        User newUser = user;
        newUser.setPassword(hashPassword(user.getPassword()));
        userRepository.save(newUser);
        HttpSession session = request.getSession();
        session.setAttribute("user", newUser);
        return "redirect:/tripz/user/userpanel";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginPOST(@RequestParam String userLogin, @RequestParam String password, HttpServletRequest request) {
        User user = userRepository.findFirstByLogin(userLogin);
        HttpSession session = request.getSession();
        if(!checkPassword(password, user.getPassword())){
            session.setAttribute("message", "Invalid login and/or password!");
            return "/login";
        }
        session.setAttribute("user", user);
        return "redirect:/tripz/user/userpanel";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout() {
        return "/logout";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public String logoutPost(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        session.removeAttribute("message");
        return "redirect:/";
    }

    @RequestMapping(value = "/topattractions", method = RequestMethod.GET)
    public String listAttractions(Model model) {
        model.addAttribute("attractions", ratedAttractionRepository.top10AttractionsByRating());
       //model.addAttribute("attractions", attractionRepository.findAll());
        return "/topattractions";
    }

}
