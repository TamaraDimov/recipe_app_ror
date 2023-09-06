class RecipeFoodsController < ApplicationController
  def new
    @user = current_user
    @foods = @user.foods
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = RecipeFood.new
    @ingredients = []
    @foods.each do |food|
      @ingredients << food.name + " in " + food.measurement_unit
    end
  end

  def create
    recipe = Recipe.find(params[:recipe_id])
    food_unit = params[:recipe_food][:food]
    quantity = params[:recipe_food][:quantity]
    food_name = food_unit.split.first
    food_old = Food.find_by(name: food_name)
    food = food_old
    food.user = nil
    food.quantity = quantity

    recipe_food = RecipeFood.new(recipe: recipe, food: food, quantity: quantity)

    if recipe_food.save
      flash[:success] = 'Object successfully created'
      redirect_to recipe_path(recipe)
    else
      flash[:error] = 'Failed to create the recipe food'
      render 'new'
    end
  end
end
