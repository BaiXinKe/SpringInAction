package work.chauncy.tacocloud.data;

import org.springframework.data.repository.PagingAndSortingRepository;

import work.chauncy.tacocloud.Taco;

public interface TacoRepository
        extends PagingAndSortingRepository<Taco, Long> {

}
