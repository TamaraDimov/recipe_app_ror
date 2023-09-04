class CreateRecipesFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes_foods do |t|
      t.integer :quantity
      t.integer :food_id, null: false, foreign_key: { to_table: :foods }
      t.integer :recipe_id, null: false, foreign_key: { to_table: :recipes }
      t.timestamps
    end
  end
end
