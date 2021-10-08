class CreateCollectings < ActiveRecord::Migration[5.2]
  def change
    create_table :collectings do |t|
      t.integer :recipe_id, null: false
      t.integer :collection_id, null: false
      t.timestamps
    end

    add_index :collectings, :recipe_id
    add_index :collectings, :collection_id
    add_index :collectings, [:recipe_id, :collection_id], unique: true
  end
end
