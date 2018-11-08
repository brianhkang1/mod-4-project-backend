class Api::V1::SavedRecipesController < ApplicationController
  def index
    render json: SavedRecipe.all
  end

  def show
    render json: SavedRecipe.find(params[:id])
  end


end
