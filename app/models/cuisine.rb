class Cuisine < ActiveRecord::Base
  has_many :recipes
  
  validates :title, presence: true,
                 length: { minimum: 5 }
end
