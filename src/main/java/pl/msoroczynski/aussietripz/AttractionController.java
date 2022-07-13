package pl.msoroczynski.aussietripz;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class AttractionController {
    private final StateRepository stateRepository;
    private final AttractionRepository attractionRepository;

    public AttractionController(StateRepository stateRepository, AttractionRepository attractionsRepository) {
        this.stateRepository = stateRepository;
        this.attractionRepository = attractionsRepository;
    }

    @RequestMapping("/add-attractions")
    @ResponseBody
    public String addAttractions() {
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
        return "attractions updated";
    }
}
