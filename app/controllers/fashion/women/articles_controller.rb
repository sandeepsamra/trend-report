class Fashion::Women::ArticlesController < ApplicationController

   def index
   	if params[:query]
      @article = Article.search(params[:query]).order("created_at DESC")
    else
      @article = Article.all #.order("created_at DESC")
    end
  end

  def create

  end

end