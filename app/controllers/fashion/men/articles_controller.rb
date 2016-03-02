class Fashion::Men::ArticlesController < ApplicationController

   def index
    if params[:query]
      @article = Article.search(params[:query]).where(category: "wfashion").page(params[:page])
    else
      @article = Article.where(category: "mfashion").page(params[:page])
    end
  end

end