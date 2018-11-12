class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :fav_food, :worst_food

  has_many :saved_recipes
  has_many :recipes, through: :saved_recipes
end
