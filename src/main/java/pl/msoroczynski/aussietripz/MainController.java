package pl.msoroczynski.aussietripz;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class MainController {
    private final StateRepository stateRepository;
    private final UserRepository userRepository;
    private final PlanRepository planRepository;
    private final AttractionRepository attractionRepository;

    public MainController(StateRepository stateRepository, UserRepository userRepository, PlanRepository planRepository, AttractionRepository attractionRepository) {
        this.stateRepository = stateRepository;
        this.userRepository = userRepository;
        this.planRepository = planRepository;
        this.attractionRepository = attractionRepository;
    }


    @RequestMapping("/test")
    @ResponseBody
    public String test(){
        List<State> allStates = State.creator();
        for (State s : allStates) {
            stateRepository.save(s);
        }
        List<State> stateList = stateRepository.findAll();
        List<Attraction> result = new ArrayList<>();
        result.add(new Attraction("Kangaroo Island", "Amazing National Park", stateList.get(0)));
        result.add(new Attraction("Ningaloo Reef", "Prestine coral reef", stateList.get(1)));
        result.add(new Attraction("Syney Opera House", "Architectural wonder", stateList.get(2)));
        result.add(new Attraction("Daintree Rainforest", "Ancient rain forest, watch out for Crocks!", stateList.get(3)));
        result.add(new Attraction("Wineglass Bay", "Marvelous white sand beach", stateList.get(4)));
        result.add(new Attraction("12 Apostles", "Unique sandstone formations", stateList.get(5)));
        result.add(new Attraction("Kakadu National Park", "Diverse bio reserve on ancient aboriginal land", stateList.get(6)));
        result.add(new Attraction("Canberra", "Oz capital", stateList.get(7)));
        for (Attraction a: result) {
            attractionRepository.save(a);
        }
        User user = new User();
        userRepository.save(user);
        Plan plan = new Plan();
        plan.setDescription("Super Plan");
        plan.setName("Mikes Plan");
        plan.setAttractions(result);
        planRepository.save(plan);

        return "Its working!";
    }


}
