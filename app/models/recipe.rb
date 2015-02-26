# == Schema Information
#
# Table name: recipes
#
#  id               :integer          not null, primary key
#  title            :string
#  description      :text
#  time             :integer
#  difficulty       :string
#  ingredient_count :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  cuisine_id       :integer
#  dish_types_id    :integer
#

class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  belongs_to :cuisine
  belongs_to :dish_type

  validates :title, presence: true,
                   length: { minimum: 2 }
  validates :time, :difficulty, :ingredient_count, presence: true
end
