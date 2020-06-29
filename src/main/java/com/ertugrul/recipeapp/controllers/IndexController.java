package com.ertugrul.recipeapp.controllers;

import com.ertugrul.recipeapp.domain.Category;
import com.ertugrul.recipeapp.domain.UnitOfMeasure;
import com.ertugrul.recipeapp.repositories.CategoryRepository;
import com.ertugrul.recipeapp.repositories.UnitOfMeasureRepository;
import com.ertugrul.recipeapp.services.RecipeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Optional;

@Controller
public class IndexController {


    private final RecipeService recipeService;

    public IndexController(RecipeService recipeService) {
        this.recipeService = recipeService;
    }

    @RequestMapping({"","/","/index","/index.html"})
    public String getIndexPage(Model model) {

        model.addAttribute("recipes", recipeService.getRecipes());

        return "index";
    }
}
