class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_gossips = @user.gossips
  end
end
