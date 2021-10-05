# == Schema Information
#
# Table name: recipe_boxes
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  recipe_id  :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_recipe_boxes_on_recipe_id              (recipe_id)
#  index_recipe_boxes_on_user_id                (user_id)
#  index_recipe_boxes_on_user_id_and_recipe_id  (user_id,recipe_id) UNIQUE
#
class RecipeBox < ApplicationRecord
  validates_presence_of :recipe_id, :user_id
  validates :user_id, uniqueness: {scope: :recipe_id}

  ######################### ASSOCIATIONS #########################

  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: "User"

  belongs_to :recipe,
    primary_key: :id,
    foreign_key: :recipe_id,
    class_name: "Recipe"
  
end
