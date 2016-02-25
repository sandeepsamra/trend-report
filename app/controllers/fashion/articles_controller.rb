class Fashion::ArticlesController < ApplicationController

  def index
    @article = Article.where(id: 747)
    #render json: @article, root: false
  end

  def create

  end

end