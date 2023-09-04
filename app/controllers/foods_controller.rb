class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new; end

  def show
    @food = Food.find(params[:id])
  end

  def destroy
    @food = Food.find(params[:id])
    if @food.destroy
      flash[:notice] = 'Food was successfully deleted.'
    else
      flash[:alert] = 'Failed to delete food.'
    end
    redirect_to foods_path, notice: 'Food was successfully deleted.'
  end
end
