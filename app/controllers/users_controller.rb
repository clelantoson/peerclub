class UsersController < ApplicationController

  def show
    @user = User.find_by(id:params[:id])
    # @user_sub = Subscription.where(user:@user,group_id:@group.id).exists?
    # @group_subs = Subscription.where(group_id:params[:id])


    if current_user == @user
      @user = User.find_by(id:params[:id])
    else
      redirect_to root_path
    end

  end
end
