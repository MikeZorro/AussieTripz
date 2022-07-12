package pl.msoroczynski.aussietripz;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AttractionRepository extends JpaRepository<Attraction, Long> {

    @Query(value = "select * from attractions a LEFT JOIN plans_attractions ap on a.id = ap.attractions_id where ap.plan_id=?1", nativeQuery = true)
    List<Attraction> findAllByPlan(Plan plan);

    @Query(value = "select * from attractions a where a.state_id=?1", nativeQuery = true)
    List<Attraction> findAllByStateId(Long id);

    @Query(value = "select id, name, description, state_id from attractions where id NOT IN (select attractions_id from plans_attractions where plan_id=?1)", nativeQuery = true)
    List<Attraction> findAllNotInaPlanId(Plan plan);
}
