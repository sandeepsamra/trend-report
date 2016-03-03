class Fashion::Women::ArticlesController < ApplicationController

  def index
    if params[:query]
      @article = Article.search(params[:query]).where(category: "wfashion").page(params[:page])
      flash.now[:notice] = "There are no women's trends matching your search term." if @article.empty?
      @article = Article.where(category: "wfashion").page(params[:page]) if @article.empty?
    else
      @article = Article.where(category: "wfashion").page(params[:page])
    end
  end

end