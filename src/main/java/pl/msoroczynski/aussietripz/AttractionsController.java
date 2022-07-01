package pl.msoroczynski.aussietripz;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class AttractionsController {
    private final StateRepository stateRepository;
    private final AttractionsRepository attractionsRepository;

    public AttractionsController(StateRepository stateRepository, AttractionsRepository attractionsRepository) {
        this.stateRepository = stateRepository;
        this.attractionsRepository = attractionsRepository;
    }

    @RequestMapping("/add-attractions")
    @ResponseBody
    public String addAttractions() {
        List<State> stateList = stateRepository.findAll();
        List<Attractions> result = new ArrayList<>();
        result.add(new Attractions("Kangaroo Island", "Amazing National Park", stateList.get(0)));
        result.add(new Attractions("Ningaloo Reef", "Prestine coral reef", stateList.get(1)));
        result.add(new Attractions("Syney Opera House", "Architectural wonder", stateList.get(2)));
        result.add(new Attractions("Daintree Rainforest", "Ancient rain forest, watch out for Crocks!", stateList.get(3)));
        result.add(new Attractions("Wineglass Bay", "Marvelous white sand beach", stateList.get(4)));
        result.add(new Attractions("12 Apostles", "Unique sandstone formations", stateList.get(5)));
        result.add(new Attractions("Kakadu National Park", "Diverse bio reserve on ancient aboriginal land", stateList.get(6)));
        result.add(new Attractions("Canberra", "Oz capital", stateList.get(7)));
        for (Attractions a: result) {
            attractionsRepository.save(a);
        }
        return "attractions updated";
    }
}
