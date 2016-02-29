class FavouritesController < ApplicationController

  before_filter :restrict_access

  def index
    #@favourites = Favourites.all
    @user = current_user
  end

  def create
    #user_id = id of current user
    #when user clicks save button under article
    #favourite.user_id = current_user.id
    #favourite.save
  end

  def delete
    #when user clicks delete button under article on favourites index
    #favourite.destroy
  end
end
