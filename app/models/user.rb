class User < ApplicationRecord
  has_many :saved_recipes
  has_many :recipes, through: :saved_recipes
end
