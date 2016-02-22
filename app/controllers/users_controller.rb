class UsersController < ApplicationController
  #before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  # def create
  #   @user = User.new(user_params)

  #   if @user.save
  #     session[:user_id] = @user.id
  #     redirect_to movies_path, notice: "Welcome #{@user.firstname}!"
  #   else
  #     render :new
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:fname, :lname, :email, :password_digest)
    end
end
