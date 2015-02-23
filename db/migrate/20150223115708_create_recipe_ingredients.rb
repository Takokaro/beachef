class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.belongs_to :recipe, index: true
      t.belongs_to :ingredient, index: true
      t.integer :ingredient_amount
      t.string :ingredient_measure
      t.timestamps null: false
    end
  end
end
