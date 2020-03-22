class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :new, :edit, :update, :destroy]
  before_action :is_group_admin?, only: [:edit, :update, :destroy]

  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all
  
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
    udemy = Udemy.new
    @group = Group.find_by(id:params[:id])
    @user = current_user
    @user_sub = Subscription.where(user:@user,group_id:@group.id).exists?
    @group_subs = Subscription.where(group_id:params[:id])
    @udemy_course = udemy.course_details(@group.udemy_course_id)
  end

  # GET /groups/new
  def new
    @group = Group.new
    udemy = Udemy.new

    @search_query = params[:search]
    @courses = udemy.courses_list(params[:search])
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(udemy_course_title: params[:udemy_course_title], udemy_course_id: params[:udemy_course_id], udemy_url_img: params[:udemy_url_img])
    @group.user = current_user

    respond_to do |format|
      if @group.save
        format.html { redirect_to edit_group_path(@group), flash: { success:'Your group was successfully created.' }}
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, flash: { success:'Your group was successfully updated.' }}
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_path, flash: { success:'Group was successfully destroyed.' }}
      format.json { head :no_content }
    end
  end
 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_params
      params.require(:group).permit(:title, :description, :udemy_course_title, :udemy_course_id, :udemy_url_img, :starting_date, :max_attendees, :meeting_point, :remote, :work_period, :city)
    end

    def is_group_admin?
      if current_user == @group.user
        return true 
      else 
        # redirect_to groups_path, alert: "You are not admin of this group"
        redirect_to groups_path, flash: { info:'You are not admin of this group' }
      end
    end
end
