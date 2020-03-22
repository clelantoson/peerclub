class SubscriptionsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :new, :edit, :update, :destroy]

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
      # unless @group.users.include?(@user)
      #   @group.users << @user 
      #   redirect_to group_path(@sub.group_id), flash: { success:'Good ! You just sub' }
      # else
      #   puts "=============================="
      #   puts "=============================="
      #   puts @sub.errors.full_messages
      #   puts "=============================="
      #   puts "=============================="
      #   redirect_to group_path(@sub.group_id), flash: { fail:'You already sub to this group' }
      # end


    respond_to do |format|
      unless @group.users.include?(@user)
        if @sub.save
          format.html { redirect_to group_path(@sub.group_id), success: 'Good ! You just sub here !' }
          format.json { render :template => 'groups/show', status: :created, location: @sub.group_id }
        else
          format.html { render :template => 'groups/show' }
          format.json { render json: @sub.errors, status: :unprocessable_entity }
        end
      else
        format.html { redirect_to group_path(@sub.group_id), info: 'You already sub to this group' }
        format.json { render :template => 'groups/show', status: :ok, location: @sub.group_id }
      end
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
    
    respond_to do |format|
      format.html { redirect_to group_path(@sub.group_id), info: 'Oh non :(, you just un-sub to this group !' }
      format.json { render :template => 'groups/show', status: :ok, location: @sub.group_id }
    end
  end
end
