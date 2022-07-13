package pl.msoroczynski.aussietripz;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.Range;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.Set;

@Entity
@Getter
@Setter
@Table(name="users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @NotEmpty
    @Size(max = 100)
    private String login;
    @NotEmpty
    @Email
    private String email;
    @NotNull
    @Size(min = 3, message = "Password too short")
    @Type(type = "text")
    private String password;
}
