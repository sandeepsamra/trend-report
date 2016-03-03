class Fashion::Men::ArticlesController < ApplicationController

  def index
    if params[:query]
      @article = Article.search(params[:query]).where(category: "mfashion").page(params[:page])
      flash.now[:notice] = "There are no men's trends matching your search term." if @article.empty?
      @article = Article.where(category: "mfashion").page(params[:page]) if @article.empty?
    else
      @article = Article.where(category: "mfashion").page(params[:page])
    end
  end

end