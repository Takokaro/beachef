require 'test_helper'

class RecipeIngredientTest < ActiveSupport::TestCase

  # validation test

  test "should have amount of ingredients" do
    recipe_ingredient = RecipeIngredient.new(ingredient_measure: "kg")
    assert_not recipe_ingredient.save
  end
  test "should have measure of ingredients" do
    recipe_ingredient = RecipeIngredient.new(ingredient_amount: 1)
    assert_not recipe_ingredient.save
  end
  test "should save if all correct" do
    recipe_ingredient = RecipeIngredient.new(ingredient_amount: 1, ingredient_measure: "kg")
    assert recipe_ingredient.save
  end

  # association tests
  
  test "should have relationship with recipes and ingredients" do
    relations = RecipeIngredient.reflect_on_all_associations.map { |association| association.name }
    assert relations.include?(:recipe)
    assert relations.include?(:ingredient)
  end
end
