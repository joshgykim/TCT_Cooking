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