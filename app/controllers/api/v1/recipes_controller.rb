class Api::V1::RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :update]

  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def show
    render json: @recipe
  end

  def create
    render json: Recipe.create(recipe_params)
  end

  def update
    @recipe.update(recipe_params)
    if @recipe.save
      render json: @recipe, status: :accepted
    else
      render json: {errors: @recipe.errors.full_messages}, status: :unprocessible_entity
    end
  end


  private

  def recipe_params
    params.require(:recipe).permit(:time, :ingredients, :instructions, :user_id)
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end
end
