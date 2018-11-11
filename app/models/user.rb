class User < ApplicationRecord
  has_many :saved_recipes
  has_many :recipes, through: :saved_recipes

  has_secure_password

  # validations
  validates :username, presence: true, uniqueness: {case_sensitive: false}
  validates :password, presence: true, :on => :create
end
