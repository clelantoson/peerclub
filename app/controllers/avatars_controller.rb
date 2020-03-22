class AvatarsController < ApplicationController
  def create
    @user = current_user
    @user.avatar.attach(params[:avatar])

    # redirect_to(user_path(@user))
    redirect_to user_path(@user), flash: { success:'Your profile pic has been set successfully :)' }
  end

end
