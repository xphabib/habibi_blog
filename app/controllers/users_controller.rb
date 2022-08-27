class UsersController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @users = User.all
  end

  def profile

  end

  private
  def set_user
    @user = User.find(params[:user_id])
  end
end
