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

  def self.selectRecipes(mode)
    if mode == "Home"
      return self.where(id: 1..12)
    end
  end

  def self.searchFor(searchStr)
    return self
      .where("title ILIKE ?", "%#{searchStr}%")
      .order(Arel.sql("title ILIKE '#{searchStr}%' DESC, title"))
      .limit(5)
  end

  def self.category_count(user_id, category_id)
    self.joins(:savers)
        .joins(:categories)
        .where(
          "users.id = ? AND categories.id = ?",
          user_id,
          category_id
        ).length
  end

  def self.saved_recipe_by_category(user_id, category_id)
    self.joins(:savers)
        .joins(:categories)
        .where(
          "users.id = ? AND categories.id = ?",
          user_id,
          category_id
        ).pluck(:id)
  end

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

  has_many :recipe_boxes,
    primary_key: :id,
    foreign_key: :recipe_id,
    class_name: "RecipeBox"
  
  has_many :savers,
    through: :recipe_boxes,
    source: :user

  has_many :collectings,
    primary_key: :id,
    foreign_key: :recipe_id,
    class_name: "Collecting"

  has_many :collections,
    through: :collectings,
    source: :collection

  has_many :shoppings,
    primary_key: :id,
    foreign_key: :recipe_id,
    class_name: "Shopping"
  
  has_many :buying_users,
    through: :shoppings,
    source: :user

end
