# == Schema Information
#
# Table name: ingredients
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  
   # validation test

  test "ingredient should have a title" do
    ingredient = Ingredient.new
    assert_not ingredient.save
  end

  test "ingredient title must be at least 3 character" do
    ingredient = Ingredient.new(title: "Me")
    assert_not ingredient.save
  end

  test "ingredient should save if all correct" do
    ingredient = Ingredient.new(title: "Beet", description: "Cool for borsch")
    assert ingredient.save
  end
  
  # association tests
  
  test "should have relationship with recipes and recipe ingredient" do
    relations = Ingredient.reflect_on_all_associations.map { |association| association.name }
    assert relations.include?(:recipes)
    assert relations.include?(:recipe_ingredients)
  end
end
