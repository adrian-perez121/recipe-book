class RecipesController < ApplicationController
  before_action :authenticate_user!
  def index
    @recipes = current_user.recipes
  end

  def new
    @recipe = current_user.recipes.build
  end

  def create
    @recipe = current_user.recipes.build(recipe_params)

    if @recipe.save
      redirect_to recipes_path
    else
      render :new, status: :unprocessable_content
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:description, :title, :food_img)
  end
end
