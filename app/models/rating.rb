# == Schema Information
#
# Table name: ratings
#
#  id         :bigint           not null, primary key
#  rating     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  recipe_id  :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_ratings_on_recipe_id_and_user_id  (recipe_id,user_id) UNIQUE
#
class Rating < ApplicationRecord
  validates_presence_of :rating, :recipe_id, :user_id

  belongs_to :recipe,
    primary_key: :id,
    foreign_key: :recipe_id,
    class_name: "Recipe"

end
