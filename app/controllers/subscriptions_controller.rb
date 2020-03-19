class SubscriptionsController < ApplicationController
  def index
  end

  def show
  
  end

  def new
  
  end

  def create
    @user = current_user
    @group = Group.find_by(id:params[:group_id])
    @sub = Subscription.new(user:@user,group_id:@group.id)

    # if Subscription.where(user:@user,group_id:@group.id).exists?

      if @sub.save
        redirect_to group_path(@sub.group_id)
      else
        puts "=============================="
        puts "=============================="
        puts @sub.errors.full_messages
        puts "=============================="
        puts "=============================="
        redirect_to group_path(@sub.group_id)
      end

    # else 
    #   @already = "Désolé tu es déjà inscrit à ce groupe"
    #   redirect_to group_path(:already_exist => @already_exist)
    # end

  end

  def edit
  
  end

  def update
  
  end

  def destroy
    @group = Group.find_by(id:params[:group_id])
    @user = current_user
    @sub = Subscription.find_by(user:@user,group_id:@group.id)
    @sub.destroy
    redirect_to group_path(@sub.group_id)
    

  end

end
