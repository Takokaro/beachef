class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description 
      t.integer :time
      t.string :difficulty
      t.integer :ingredient_count
      t.timestamps null: false
    end
  end
end
