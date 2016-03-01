class Fashion::Men::ArticlesController < ApplicationController

   def index
    if params[:query]
      @article = Article.search(params[:query])
    else
      @article = Article.all#.page(params[:page])
    end
  end

  def create

  end

end