class CreateShoppings < ActiveRecord::Migration[5.2]
  def change
    create_table :shoppings do |t|
      t.integer :user_id, null: false®
      t.integer :recipe_id, null: false
      t.timestamps
    end

    add_index :shoppings, :user_id
    add_index :shoppings, :recipe_id
    add_index :shoppings, [:user_id, :recipe_id], unique: true
  end
end
