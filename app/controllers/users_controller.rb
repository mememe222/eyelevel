class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @nickname = @user.nickname
    @arts = @user.arts.order("created_at DESC")
  end
end
