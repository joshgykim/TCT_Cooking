# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  bio        :text             not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Author < ApplicationRecord
  validates_presence_of :name, :bio

  has_many :recipes,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: "Recipe"
    
end
