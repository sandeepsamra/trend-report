class Fashion::Men::ArticlesController < ApplicationController

   def index
   	if params[:search]
      @article = Article.search(params[:search]).order("created_at DESC")
    else
      @article = Article.all #.order("created_at DESC")
    end
    #render json: @article, root: false
  
  #def create

  #end

end