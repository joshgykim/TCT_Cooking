# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_categories_on_name  (name) UNIQUE
#
class Category < ApplicationRecord
  validates_presence_of :name

  has_many :categorizations,
    primary_key: :id,
    foreign_key: :category_id,
    class_name: "Categorization"

  has_many :recipes,
    through: :categorizations,
    source: :recipe
  
  has_many :savers,
    through: :recipes,
    source: :savers

end
