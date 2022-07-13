package pl.msoroczynski.aussietripz;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.servlet.LocaleContextResolver;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import javax.validation.Validator;
import java.util.Locale;

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
    @Bean
    public SecurityFilter securityFilter(){
        return new SecurityFilter();
    }
    @Bean
    public FilterRegistrationBean securityFilterRegistration() {

        FilterRegistrationBean registration = new FilterRegistrationBean();
        registration.setFilter(securityFilter());
        registration.addUrlPatterns("/tripz/user/*");
        registration.addInitParameter("paramName", "paramValue");
        registration.setName("securityFilter");
        registration.setOrder(1);
        return registration;
    }

    public static void main(String[] args) {
        SpringApplication.run(AussieTripzApplication.class, args);
    }

}
