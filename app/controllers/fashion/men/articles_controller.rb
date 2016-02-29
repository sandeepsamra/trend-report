class Fashion::Men::ArticlesController < ApplicationController

   def index
   	if params[:query]
      @article = Article.search(params[:query])
    else
      @article = Article.all #.order("created_at DESC")
    end
    #render json: @article, root: false
  end
  #def create

  #end

end