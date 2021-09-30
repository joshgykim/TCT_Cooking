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
require 'test_helper'

class CategorizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
