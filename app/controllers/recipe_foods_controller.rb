class RecipeFoodsController < ApplicationController
  def new
    @user = current_user
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = RecipeFood.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @food = Food.find_by(name: params[:recipe_food][:food])
    @quantity = params[:recipe_food][:quantity]

    if @food.nil?
      # Food doesn't exist, create a new Food record
      @food = Food.create(name: params[:recipe_food][:food])
    end

    @recipe_food = RecipeFood.new(recipe_id: @recipe.id, food_id: @food.id, quantity: @quantity)

    if @recipe_food.save
      flash[:success] = 'Object successfully created'
      redirect_to recipe_path(@recipe)
    else
      flash[:error] = 'Failed to create the recipe food'
      render 'new'
    end
  end
end
