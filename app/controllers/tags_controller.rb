class TagsController < ApplicationController

  def index
    @tags = Tag.all
    if !@tag
      @tag = Tag.new
    end
    render('tags/index.html.erb')
  end

  def show
    @tag = Tag.find(params[:id])
    @recipes = Recipe.all
    render('tags/show.html.erb')
  end

  def create
    @tag = Tag.new(params[:tag])
    if !@tag.save
      index
    else
      redirect_to('/tags')
    end
  end

  def edit
    @tag = Tag.find(params[:id])
    render('tags/edit.html.erb')
  end

  def update
    @tag = Tag.find(params[:id])
    recipes = params[:recipes]
    recipes.each do |id|
      @tag.recipes << Recipe.find(id.to_i)
    end
    if @tag.update(params[:tag])
      redirect_to('/tags')
    else
      render('tags/edit.html.erb')
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to('/tags')
  end

end
