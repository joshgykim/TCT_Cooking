# == Schema Information
#
# Table name: collections
#
#  id          :bigint           not null, primary key
#  description :text             not null
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Collection < ApplicationRecord
  validates_presence_of :name, :description

  has_many :collectings,
    primary_key: :id,
    foreign_key: :collection_id,
    class_name: "Collecting"
  
  has_many :recipes,
    through: :collectings,
    source: :recipe
  
  def self.selectCollections(mode)
    if mode == "Home"
      return self.where(id: 1..4)
    end
  end

end
