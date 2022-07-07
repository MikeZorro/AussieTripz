package pl.msoroczynski.aussietripz;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.core.convert.converter.Converter;

import java.util.Optional;

public class AttractionConverter implements Converter<String, Attraction> {
    @Autowired
    private AttractionRepository attractionRepository;

    @Override
    public Attraction convert(String source) {
        Optional<Attraction> result = attractionRepository.findById(Long.parseLong(source));
        return result.get();
    }
}
