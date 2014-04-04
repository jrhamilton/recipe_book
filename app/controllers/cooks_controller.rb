class CooksController < ApplicationController

  def index
    @cooks = Cook.all
    render('cooks/index.html.erb')
  end

  def show
    @cook = Cook.find(params[:id])
    render('cooks/show.html.erb')
  end

  def new
    @cook = Cook.new
    render('cooks/new.html.erb')
  end

  def create
    @cook = Cook.new(params[:cook])
    if @cook.save
      redirect_to("/cooks/#{@cook.id}")
    else
      render('cooks/new.html.erb')
    end
  end

end
