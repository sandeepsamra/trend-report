class Fashion::Women::ArticlesController < ApplicationController

  def index
    @article = Article.all
<<<<<<< HEAD
=======
    #render json: @article, root: false
>>>>>>> bf16a6cac9ecf354203a881b3e7f286a7e848e76
  end

  def create

  end

end