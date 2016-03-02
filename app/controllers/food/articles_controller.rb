class Food::ArticlesController < ApplicationController

  def index
    if params[:query]
      @article = Article.search(params[:query]).where(category: "food").page(params[:page])
    else
      @article = Article.where(category: "food").page(params[:page])
    end
  end

  def create

  end

end