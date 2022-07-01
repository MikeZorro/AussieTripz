package pl.msoroczynski.aussietripz;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@Table(name="states")
public class State {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String name;
    private String capital;

    public State(String name, String capital) {
        this.id = id;
        this.name = name;
        this.capital = capital;
    }

    public State() {
    }

    public static List<State> creator(){
        List<State> result = new ArrayList<>();
        result.add(new State("South Australia", "Adelaide"));
        result.add(new State("Western Australia ", "Perth"));
        result.add(new State("New South Wales", "Sydney"));
        result.add(new State("Queensland", "Brisbane"));
        result.add(new State("Tasmania", "Hobart"));
        result.add(new State("Victoria", "Melbourne"));
        result.add(new State("Northern Territory", "Darwin"));
        result.add(new State("Australian Capital Territory", "Canberra"));
        return result;
    }
}
