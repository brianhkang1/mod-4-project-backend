class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :time, :cost, :image, :summary, :ingredients, :instructions, :user_id

  has_many :saved_recipes
  # has_many :users, through: :saved_recipes
end
