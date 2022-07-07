package pl.msoroczynski.aussietripz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

import java.util.Optional;

public class PlanConverter implements Converter<String, Plan> {
    @Autowired
    private PlanRepository planRepository;

    @Override
    public Plan convert(String source) {
        Optional<Plan> result = planRepository.findById(Long.parseLong(source));
        return result.get();
    }
}
