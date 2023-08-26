package work.chauncy.tacocloud.data;

import work.chauncy.tacocloud.TacoOrder;

public interface OrderRepository {
    TacoOrder save(TacoOrder order);
}
