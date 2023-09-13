package work.chauncy.tacocloud.data;

import org.springframework.data.repository.CrudRepository;

import work.chauncy.tacocloud.TacoOrder;

public interface OrderRepository
                extends CrudRepository<TacoOrder, Long> {
}
