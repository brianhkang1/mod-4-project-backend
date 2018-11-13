class Api::V1::SavedRecipesController < ApplicationController

  skip_before_action :authorized, only: [:index]

  def index
    render json: SavedRecipe.all
  end

  def show
    render json: SavedRecipe.find(params[:id])
  end

  def create
    @saved_recipe = SavedRecipe.create(saved_recipe_params)
    if @saved_recipe.persisted?
      render json: @saved_recipe
    else
      render json: {error: "failed to saved recipe"}, status: :not_acceptable
    end
  end

  private

  def saved_recipe_params
    params.require(:saved_recipe).permit(:user_id, :recipe_id)
  end

end
