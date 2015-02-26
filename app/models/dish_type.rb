# == Schema Information
#
# Table name: dish_types
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class DishType < ActiveRecord::Base
  has_many :recipes
 
  validates :title, presence: true,
                 length: { minimum: 3 }
end
