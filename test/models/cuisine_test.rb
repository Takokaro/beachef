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

require 'test_helper'

class CuisineTest < ActiveSupport::TestCase

  # validation test

  test "cuisine should have a title" do
    cuisine = Cuisine.new
    assert_not cuisine.save
  end

  test "cuisine title must be at least 5 character" do
    cuisine = Cuisine.new(title: "Meow")
    assert_not cuisine.save
  end

  test "cuisine should save if all correct" do
    cuisine = Cuisine.new(title: "Russian", description: "Borsch!")
    assert cuisine.save
  end

  # association tests

  test "should have relationship with recipes" do
    relations = Cuisine.reflect_on_all_associations.map { |association| association.name }
    assert relations.include?(:recipes)
  end

end
