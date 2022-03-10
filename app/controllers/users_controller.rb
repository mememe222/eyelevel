class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @arts = current_user.arts
  end
end
