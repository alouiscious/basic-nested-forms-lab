class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
  
  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: 'First Ingredient')
    @recipe.ingredients.build(name: 'Second Ingredient')
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    redirect_to recipes_path
  end

  def recipe_params
    params.recipe(:recipe).permit(
      :title,
      ingredients_attributes:[ :name, :quantity ]
    )
  end
end