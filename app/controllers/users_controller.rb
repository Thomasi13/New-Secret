class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    user.save
    log_in (user)
    redirect_to user_path(user.id)
  end

  def show
    @user_name = User.find(params[:id]).nick_name
    puts @user_name
  end

  def read
  end

  def update
  end

  def delete
  end

  private

  def user_params
    params.require(:user).permit(:nick_name, :email, :password)
  end
 
end
