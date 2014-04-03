class CooksController < ApplicationController

  def index
    @cooks = Cook.all
    render('cooks/index.html.erb')
  end
