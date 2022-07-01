package pl.msoroczynski.aussietripz;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@Table(name = "attractions")
public class Attractions {
    public Attractions() {
    }

    public Attractions(String name, String description, State state) {
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
