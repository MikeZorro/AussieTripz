package pl.msoroczynski.aussietripz;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.persistence.Tuple;
import java.awt.print.Book;
import java.util.List;

@Repository
public interface RatedAttractionRepository extends JpaRepository <RatedAttraction, Long> {

    @Query(value = "SELECT a.name, AVG(rating) AS 'rating' FROM rated_attractions r  join attractions a on r.attraction_id = a.id group by attraction_id ORDER BY 2 DESC LIMIT 10;", nativeQuery = true)
    List<Tuple> top10AttractionsByRating();

}
