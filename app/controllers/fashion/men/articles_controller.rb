class Fashion::Men::ArticlesController < ApplicationController

  def index
    @article = Article.all
  end

  def create

  end

end