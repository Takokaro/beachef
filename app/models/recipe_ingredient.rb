# == Schema Information
#
# Table name: recipe_ingredients
#
#  id                 :integer          not null, primary key
#  recipe_id          :integer
#  ingredient_id      :integer
#  ingredient_amount  :integer
#  ingredient_measure :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class RecipeIngredient < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :recipe

  validates :ingredient_amount, :ingredient_measure, presence: true
end
