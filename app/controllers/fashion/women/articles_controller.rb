class Fashion::Women::ArticlesController < ApplicationController

  def index
   	if params[:query]
      @article = Article.search(params[:query])
    else
      @article = Article.all.page(params[:page]) #.order("created_at DESC")
    end
  end

 	def create

 	end
end