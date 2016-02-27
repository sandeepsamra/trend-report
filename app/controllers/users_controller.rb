class UsersController < ApplicationController

  def index
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to user_favourites_path
      # session[:user_id] = @user.id
      # redirect_to movies_path, notice: "Welcome aboard, #{@user.firstname}!"
    else
      redirect_to root_path
    end

  end

  protected

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password)
  end

end
