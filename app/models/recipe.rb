class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  belongs_to :cuisine
  belongs_to :dish_type

  validates :title, presence: true,
                   length: { minimum: 2 }
  validates :time, :difficulty, :ingredient_count, presence: true
end
