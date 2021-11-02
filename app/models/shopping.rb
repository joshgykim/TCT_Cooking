# == Schema Information
#
# Table name: shoppings
#
#  id         :bigint           not null, primary key
#  omitted    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  recipe_id  :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_shoppings_on_recipe_id              (recipe_id)
#  index_shoppings_on_user_id                (user_id)
#  index_shoppings_on_user_id_and_recipe_id  (user_id,recipe_id) UNIQUE
#
class Shopping < ApplicationRecord
  validates_presence_of :user_id, :recipe_id
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
