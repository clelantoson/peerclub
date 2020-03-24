class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @user = User.find_by(id:params[:id])
    # if current_user == @user
    #   @user = User.find_by(id:params[:id])
    # else
    #   redirect_to root_path
    # end

  end
end
