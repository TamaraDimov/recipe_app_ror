class RecipesController < ApplicationController
  def index
    @recipes = Recipe.where(user_id: current_user.id)
  end

  def show
    @user = current_user
    @recipe = Recipe.find(params[:id])
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipe_path, notice: 'The recipe was deleted'
  end
end
