class AddOmittedToShoppings < ActiveRecord::Migration[5.2]
  def change
    add_column :shoppings, :omitted, :string
  end
end
