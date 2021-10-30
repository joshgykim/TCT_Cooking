# == Schema Information
#
# Table name: collectings
#
#  id            :bigint           not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  collection_id :integer          not null
#  recipe_id     :integer          not null
#
# Indexes
#
#  index_collectings_on_collection_id                (collection_id)
#  index_collectings_on_recipe_id                    (recipe_id)
#  index_collectings_on_recipe_id_and_collection_id  (recipe_id,collection_id) UNIQUE
#
class Collecting < ApplicationRecord
  validates_presence_of :recipe_id, :collection_id

  belongs_to :collection,
    primary_key: :id,
    foreign_key: :collection_id,
    class_name: "Collection"

  belongs_to :recipe,
    primary_key: :id,
    foreign_key: :recipe_id,
    class_name: "Recipe"

end
