package work.chauncy.tacocloud.data;

import org.springframework.data.repository.CrudRepository;

import work.chauncy.tacocloud.Ingredient;

public interface IngredientRepostory
                extends CrudRepository<Ingredient, String> {
}
