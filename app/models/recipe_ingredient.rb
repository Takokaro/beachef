class RecipeIngredient < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :recipe

  validates :ingredient_amount, :ingredient_measure presence true
end
