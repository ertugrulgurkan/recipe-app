package com.ertugrul.recipeapp.services;

import com.ertugrul.recipeapp.domain.Recipe;

import java.util.Set;

public interface RecipeService {
    Set<Recipe> getRecipes();
}
