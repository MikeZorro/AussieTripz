package pl.msoroczynski.aussietripz;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@Getter
@Setter
@Table(name="plans")
public class Plan {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String name;
    private String description;
    @ManyToOne
    private User user;
    @ManyToMany
    private List<Attraction> attractions;

}
