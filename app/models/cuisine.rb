class Cuisine < ActiveRecord::Base
  validates :name, presence true,
                 length: { minimum: 7 }
end
