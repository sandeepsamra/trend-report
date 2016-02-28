class UsersController < ApplicationController

  def index
    @user = User.new
  end

  def create
    user = User.new(user_params)

    if user.save
      session[:user_id] = user.id
      redirect_to user_favourites_path(user.id)
      # redirect_to movies_path, notice: "Welcome aboard, #{@user.firstname}!"
    else
      redirect_to root_path
    end

  end

  protected

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation)
  end

end
