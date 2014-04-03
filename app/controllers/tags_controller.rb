class TagsController < ApplicationController

  def index
    @tags = Tag.all
    render('tags/index.html.erb')
  end

  def show
    @tag = Tag.find(params[:id])
    render('tags/show.html.erb')
  end

end
