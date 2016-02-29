class Fashion::ArticlesController < ApplicationController

  def index
    if params[:query]
      @article = Article.search(params[:query]).order("created_at DESC")
    else
      @article = Article.all
    end
    #render json: @article, root: false
  end

  # def show_womens
  # 	@article = Article.where(category: "wfashion")
  # end

  # def show_mens
  # 	@article = Article.where(category: "mfashion")
  # end  
end