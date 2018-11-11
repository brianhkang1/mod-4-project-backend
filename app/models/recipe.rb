class Recipe < ApplicationRecord
  has_many :saved_recipes
  has_many :users, through: :saved_recipes
  mount_uploader :image, ImageUploader
end
