class Fashion::Women::ArticlesController < ApplicationController

  def index
    @article = Article.all
    #render json: @article, root: false
  end

  def create

  end

end