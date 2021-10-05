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
require 'test_helper'

class RecipeBoxTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
