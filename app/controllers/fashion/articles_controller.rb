class Fashion::ArticlesController < ApplicationController

  def index
    @article = Article.all
    #render json: @article, root: false
  end

  # def show_womens
  # 	@article = Article.where(category: "wfashion")
  # end

  # def show_mens
  # 	@article = Article.where(category: "mfashion")
  # end  
end