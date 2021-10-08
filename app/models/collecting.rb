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