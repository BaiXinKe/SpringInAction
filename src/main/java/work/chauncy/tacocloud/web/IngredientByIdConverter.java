package work.chauncy.tacocloud.web;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import work.chauncy.tacocloud.Ingredient;
import work.chauncy.tacocloud.Ingredient.Type;
import work.chauncy.tacocloud.data.IngredientRepostory;

@Component
public class IngredientByIdConverter implements Converter<String, Ingredient> {
    private IngredientRepostory ingredientRepo;

    @Autowired
    public IngredientByIdConverter(IngredientRepostory ingredientRepo) {
        this.ingredientRepo = ingredientRepo;
    }

    @Override
    public Ingredient convert(String id) {
        return ingredientRepo.findById(id).orElse(null);
    }
}
