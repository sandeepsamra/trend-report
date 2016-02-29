class Food::ArticlesController < ApplicationController

  def index
    @article = Article.all
  end

end