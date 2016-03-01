class Fashion::Men::ArticlesController < ApplicationController

   def index
   	if params[:query]
      @article = Article.search(params[:query])
    else
      @article = Article.all.page(params[:page])
    end
    #render json: @article, root: false
  end
  #def create

  #end

end