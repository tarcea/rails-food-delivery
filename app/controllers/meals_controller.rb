class MealsController < ApplicationController

  def index
    @meals = Meal.all
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to meals_path, notice: ''
    else
      render :new
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:name)
  end
end
