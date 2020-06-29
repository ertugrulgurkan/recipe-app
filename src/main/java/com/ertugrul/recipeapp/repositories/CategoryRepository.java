package com.ertugrul.recipeapp.repositories;

import com.ertugrul.recipeapp.domain.Category;
import org.springframework.data.repository.CrudRepository;

public interface CategoryRepository extends CrudRepository<Category, Long> {
}
