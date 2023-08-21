package work.chauncy.tacocloud.data;

import java.util.Optional;

import work.chauncy.tacocloud.Ingredient;

public interface IngredientRepostory {
    Iterable<Ingredient> findAll();

    Optional<Ingredient> findById(String id);

    Ingredient save(Ingredient ingredient);
}
