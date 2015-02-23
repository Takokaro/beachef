class AddRelationshipToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :cuisine_id, :integer
    add_column :recipes, :dish_types_id, :integer
  end
end
