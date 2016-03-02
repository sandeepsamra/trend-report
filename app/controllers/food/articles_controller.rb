class Food::ArticlesController < ApplicationController

  def index
    if params[:query]
      @article = Article.search(params[:query]).where(category: "food").page(params[:page])
      flash.now[:notice] = "There are no food trends matching your search term." if @article.empty?
      @article = Article.where(category: "food").page(params[:page]) if @article.empty?
    else
      @article = Article.where(category: "food").page(params[:page])
    end
  end

  def create

  end

end