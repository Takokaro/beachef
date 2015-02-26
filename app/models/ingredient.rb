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

class Ingredient < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  
  validates :title, presence: true,
                 length: { minimum: 3 }
end

