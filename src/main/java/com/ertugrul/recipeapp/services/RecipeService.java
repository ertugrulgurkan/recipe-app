package com.ertugrul.recipeapp.services;

import com.ertugrul.recipeapp.commands.RecipeCommand;
import com.ertugrul.recipeapp.domain.Recipe;

import java.util.Set;

public interface RecipeService {
    Set<Recipe> getRecipes();
    Recipe findById(Long l);
    RecipeCommand saveRecipeCommand(RecipeCommand command);
}
