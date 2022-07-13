package pl.msoroczynski.aussietripz;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.core.convert.converter.Converter;
import java.util.Optional;

public class StateConverter implements Converter<String, State> {
@Autowired
private StateRepository stateRepository;

@Override
public State convert(String source) {
        Optional<State> result = stateRepository.findById(Long.parseLong(source));
        return result.get();
        }


}
