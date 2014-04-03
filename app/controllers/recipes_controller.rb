class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render('recipes/index.html.erb')
  end

  def new
    @recipe = Recipe.new
    render('recipes/new.html.erb')
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    if !@recipe.save
      render('recipes/new.html.erb')
    else
      if !params[:tags].nil?
        params[:tags].each do |number|
          @recipe.tags << Tag.find(number.to_i)
        end
      end
      redirect_to("/recipes/#{@recipe.id}")
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    render('recipes/show.html.erb')
  end

  def edit
    @recipe = Recipe.find(params[:id])
    render('recipes/edit.html.erb')
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(params[:recipe])
      redirect_to("/recipes/#{@recipe.id}")
    else
      render('recipe/edit.html.erb')
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to('/recipes')
  end
end
