require 'test_helper'

class DishTypeTest < ActiveSupport::TestCase
  
   # validation test

  test "dish type should have a title" do
    dish_type = DishType.new
    assert_not dish_type.save
  end

  test "dish type title must be at least 3 character" do
    dish_type = DishType.new(title: "Me")
    assert_not dish_type.save
  end

  test "dish type should save if all correct" do
    dish_type = DishType.new(title: "Soup", description: "It's better when hot")
    assert dish_type.save
  end

    # association tests
  
  test "should have relationship with recipes" do
    relations = DishType.reflect_on_all_associations.map {|association| association.name}
    assert relations.include?(:recipes)
  end

end
