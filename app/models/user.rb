class User < ApplicationRecord
  has_many :saved_recipes
  has_many :recipes, through: :saved_recipes

  has_secure_password

  # validations
  validates :username, uniqueness: {case_sensitive: false}
end
