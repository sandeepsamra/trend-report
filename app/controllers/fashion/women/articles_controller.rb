class Fashion::Women::ArticlesController < ApplicationController

  def index
    @article = Article.all
  end

  def create

  end

end