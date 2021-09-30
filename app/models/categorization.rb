# == Schema Information
#
# Table name: categorizations
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer          not null
#  recipe_id   :integer          not null
#
# Indexes
#
#  index_categorizations_on_category_id  (category_id)
#  index_categorizations_on_recipe_id    (recipe_id)
#
class Categorization < ApplicationRecord
  validates_presence_of :category_id, :recipe_id

  belongs_to :recipe,
    primary_key: :id,
    foreign_key: :recipe_id,
    class_name: "Recipe"
  
  belongs_to :category,
    primary_key: :id,
    foreign_key: :category_id,
    class_name: "Category"

end
