class UsersController < ApplicationController

  def show
    #@user = User.new(params[:user])
    @user = User.find(params[:id])
  end

end
