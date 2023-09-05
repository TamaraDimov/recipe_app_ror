class RecipesController < ApplicationController
  def index
    @recipes = Recipe.where(user_id: current_user.id)
  end

  def new
    @recipe = Recipe.new
  end

  def show
    @user = current_user
    @recipe = Recipe.find(params[:id])
    @foods = @recipe.foods
  end

  def create
    @user = current_user
    @recipe = @user.recipes.new(recipe_params)

    if @recipe.save
      redirect_to recipe_path(@recipe), notice: 'The recipe was succesfuly created'
    else
      render :new, alert: 'The recipe was not created'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipe_path, notice: 'The recipe was deleted'
  end

  def public
    @recipes = Recipe.where(is_public: true).order(created_at: :desc)
    render 'public'
  end

  def is_public_toggle
    @recipe = Recipe.find(params[:id])
    @recipe.is_public = !@recipe.is_public
    @recipe.save
    redirect_to recipe_path(@recipe), notice: 'The recipe is now ' + (@recipe.is_public ? 'public' : 'private')
  end

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time_minutes, :cooking_time_minutes, :description, :is_public)
  end
end
