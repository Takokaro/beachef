class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :title
      t.text :description 
      t.timestamps null: false
    end
  end
end
