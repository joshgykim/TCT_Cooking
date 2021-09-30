# == Schema Information
#
# Table name: ingredients
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  quantity   :string
#  unit       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  recipe_id  :integer          not null
#
# Indexes
#
#  index_ingredients_on_recipe_id  (recipe_id)
#
class Ingredient < ApplicationRecord
  validates_presence_of :name, :recipe_id

  belongs_to :recipe,
    primary_key: :id,
    foreign_key: :recipe_id,
    class_name: "Recipe"

end
