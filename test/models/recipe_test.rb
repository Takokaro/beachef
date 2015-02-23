require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  
  # validation test

  test "recipe should have a title" do
    recipe = Recipe.new(time: 22, difficulty: "easy", ingredient_count: 3)
    assert_not recipe.save
  end

  test "recipe title must be at least 2 character" do
    recipe = Recipe.new(title: "M", time: 22, difficulty: "easy", ingredient_count: 3)
    assert_not recipe.save
  end

  test "recipe should have time" do
    recipe = Recipe.new(title: "Soup", difficulty: "easy", ingredient_count: 3)
    assert_not recipe.save
  end

  test "recipe should have difficulty" do
    recipe = Recipe.new(title: "Soup", time: 22,  ingredient_count: 3)
    assert_not recipe.save
  end

  test "recipe should have ingredient count" do
    recipe = Recipe.new(title: "Soup", time: 22, difficulty: "easy")
    assert_not recipe.save
  end

  test "recipe should save if all correct" do
    recipe = Recipe.new(title: "Soup", time: 22, difficulty: "easy", ingredient_count: 3)
    assert recipe.save
  end

  # association tests

  test "should have relationship with four tables" do
    relations = Recipe.reflect_on_all_associations.map { |association| association.name }
    assert relations.include?(:cuisine)
    assert relations.include?(:ingredients)
    assert relations.include?(:recipe_ingredients)
    assert relations.include?(:dish_type)
  end

end
