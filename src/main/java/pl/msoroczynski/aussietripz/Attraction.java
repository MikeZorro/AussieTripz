package pl.msoroczynski.aussietripz;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Getter
@Setter
@Table(name = "attractions")
public class Attraction {
    public Attraction() {
    }

    public Attraction(String name, String description, State state) {
        this.name = name;
        this.description = description;
        this.state = state;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @NotEmpty
    @Size(max = 100)
    private String name;
    private String description;
    @ManyToOne
    private State state;


}
