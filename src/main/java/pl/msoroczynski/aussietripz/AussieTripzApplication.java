package pl.msoroczynski.aussietripz;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;

import javax.validation.Validator;

@SpringBootApplication
public class AussieTripzApplication {
    @Bean
    public AttractionConverter getAttractionConverter() {
        return new AttractionConverter();
    }

    @Bean
    public PlanConverter getPlanConverter() {
        return new PlanConverter();
    }

    @Bean
    public StateConverter getStateConverter() {
        return new StateConverter();
    }

    @Bean
    public Validator validator() {
        return new LocalValidatorFactoryBean();
    }


    public static void main(String[] args) {
        SpringApplication.run(AussieTripzApplication.class, args);
    }

}
