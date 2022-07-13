package pl.msoroczynski.aussietripz;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class StateController {
    private final StateRepository stateRepository;

    public StateController(StateRepository stateRepository) {
        this.stateRepository = stateRepository;
    }

    @RequestMapping("/add-states")
    @ResponseBody
    public String addStates(){
        List<State> allStates = State.creator();
        for (State s : allStates) {
            stateRepository.save(s);
        }
        return "List of states updated!";
    }
}
