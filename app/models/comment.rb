# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  body       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer          not null
#  recipe_id  :integer          not null
#
# Indexes
#
#  index_comments_on_author_id  (author_id)
#  index_comments_on_recipe_id  (recipe_id)
#
class Comment < ApplicationRecord
  validates_presence_of :body, :author_id, :recipe_id

  belongs_to :recipe,
    primary_key: :id,
    foreign_key: :recipe_id,
    class_name: "Recipe"

  belongs_to :commenter,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: "User"

end
