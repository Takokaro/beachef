class AddRelationshipToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :cuisine_id, :integer
    add_column :recipes, :dish_type_id, :integer
  end
end
