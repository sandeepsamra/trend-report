class Fashion::Women::ArticlesController < ApplicationController

   def index
    if params[:query]
      @article = Article.search(params[:query]).where(category: "wfashion")
    else
      @article = Article.where(category: "wfashion").page(params[:page])
    end
  end

end