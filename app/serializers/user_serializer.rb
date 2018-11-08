class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :fav_food, :worst_food, :avatar_url

  has_many :saved_recipes
  has_many :recipes, through: :saved_recipes
end
