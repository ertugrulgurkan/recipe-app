package com.ertugrul.recipeapp.repositories;

import com.ertugrul.recipeapp.domain.Recipe;
import org.springframework.data.repository.CrudRepository;

public interface RecipeRepository extends CrudRepository<Recipe,Long> {
}
