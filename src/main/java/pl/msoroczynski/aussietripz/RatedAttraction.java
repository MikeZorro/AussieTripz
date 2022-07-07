package pl.msoroczynski.aussietripz;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.validator.constraints.Range;

import javax.persistence.*;

@Entity
@Getter
@Setter
@Table(name = "rated_attractions")
public class RatedAttraction {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @ManyToOne
    private Attraction attraction;
    @Range(min = 0, max =10)
    private double rating;

}
