package pl.msoroczynski.aussietripz;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;


@Repository
public interface PlanRepository extends JpaRepository<Plan, Long> {

    List<Plan> findFirstById(Long id);
    List<Plan> findAllByUser(User user);
}
