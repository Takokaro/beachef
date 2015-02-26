# == Schema Information
#
# Table name: cuisines
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cuisine < ActiveRecord::Base
  has_many :recipes
  
  validates :title, presence: true,
                 length: { minimum: 5 }
end
