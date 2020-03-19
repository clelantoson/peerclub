class AvatarsController < ApplicationController
  def create
    @user = current_user
    @user.avatar.attach(params[:avatar])

    puts "========================="
    puts "========================="
    puts params[:avatar]
    puts "========================="
    puts "========================="
    redirect_to(user_path(@user))
  end

end
