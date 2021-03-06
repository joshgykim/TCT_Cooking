# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  username        :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_session_token  (session_token) UNIQUE
#  index_users_on_username       (username) UNIQUE
#
class User < ApplicationRecord
  validates_presence_of :email, :username, :session_token, :password_digest
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates_uniqueness_of :username, :session_token
  validates :password, length: {minimum: 6}, allow_nil: true

  after_initialize :ensure_session_token
  attr_reader :password

  # SPIRE

  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)
    return nil unless user
    user.is_password?(password) ? user : nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end

  def reset_session_token
    self.session_token = SecureRandom.urlsafe_base64
    self.save
    self.session_token
  end

  ######################### ASSOCIATIONS #########################

  has_many :comments,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: "Comment"

  has_many :ratings,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: "Rating"

  has_many :recipe_boxes,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: "RecipeBox"
  
  has_many :saved_recipes,
    through: :recipe_boxes,
    source: :recipe
  
  has_many :saved_recipe_categories,
    through: :saved_recipes,
    source: :categories

  has_many :shoppings,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: "Shopping"
  
  has_many :recipes_to_shop,
    through: :shoppings,
    source: :recipe

end
