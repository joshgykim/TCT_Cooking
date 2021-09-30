# == Schema Information
#
# Table name: recipes
#
#  id           :bigint           not null, primary key
#  description  :text             not null
#  image_url    :string           not null
#  preparations :text             not null
#  time         :string           not null
#  title        :string           not null
#  yield        :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  author_id    :integer          not null
#
# Indexes
#
#  index_recipes_on_author_id  (author_id)
#
class Recipe < ApplicationRecord
  validates_presence_of :title,
                        :description,
                        :yield,
                        :time,
                        :preparations, 
                        :image_url,
                        :author_id

  ######################### ASSOCIATIONS #########################

  belongs_to :author,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: "Author"

  has_many :ingredients,
    primary_key: :id,
    foreign_key: :recipe_id,
    class_name: "Ingredient"
  
  has_many :comments,
    primary_key: :id,
    foreign_key: :recipe_id,
    class_name: "Comment"

  has_many :ratings,
    primary_key: :id,
    foreign_key: :recipe_id,
    class_name: "Rating"

  has_many :categorizations,
    primary_key: :id,
    foreign_key: :recipe_id,
    class_name: "Categorization"

  has_many :categories,
    through: :categorizations,
    source: :category

end
