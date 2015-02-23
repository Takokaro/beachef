class DishType < ActiveRecord::Base
  has_many :recipes
 
  validates :title, presence: true,
                 length: { minimum: 3 }
end
