class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :fav_food, :worst_food, :avatar

  has_many :saved_recipes
  # has_many :recipes, through: :saved_recipes
end
