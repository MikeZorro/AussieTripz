package pl.msoroczynski.aussietripz;

import org.hibernate.annotations.SQLUpdate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
User findFirstByLogin(String login);
Boolean existsUserByLogin(String login);

@Query(value =" UPDATE users SET login = '?1', email = '?2' where id = '?3'", nativeQuery = true)
    User updateUserLoginAndEmail(String login, String email, long id);


}
