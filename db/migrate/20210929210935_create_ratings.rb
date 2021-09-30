class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :rating, null: false
      t.integer :recipe_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end

    add_index :ratings, [:recipe_id, :user_id], unique: true
  end
end