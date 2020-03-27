class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :new, :edit, :update, :destroy]
  before_action :is_group_admin?, only: [:edit, :update, :destroy]

  # GET /groups
  # GET /groups.json
  def index
    @search_query = params[:search]
    @city_query = params[:city]
    @groups = Group.all
    @groups_found = Group.search(@search_query, @city_query)
    @ruby = Group.search_tab("ruby")
    @react = Group.search_tab("react")
    @javascript = Group.search_tab("javascript")
    @python = Group.search_tab("python")
    @php = Group.search_tab("php")
    @c = Group.search_tab("c++")

  end

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
    @group = Group.find_by(id:params[:id])
    udemy = Udemy.new
    @udemy_course = udemy.course_details(@group.udemy_course_id)
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(udemy_course_title: params[:udemy_course_title], udemy_course_id: params[:udemy_course_id], udemy_url_img: params[:udemy_url_img])
    @group.user = current_user
    @group.max_attendees = rand(2..15)
    @group.title = "My group to learn #{params[:udemy_course_title]}"
    # @group.meeting_point = "On the internet"
    # @group.city = "Wherever you want"
    @group.description = "We will learn #{params[:udemy_course_title]}"
    @group.work_period = "All days long"
    @group.starting_date = DateTime.now

    respond_to do |format|

      if @group.save
        Subscription.create(user:@group.user,group_id:@group.id)
        format.html { redirect_to edit_group_path(@group), flash: { info:'Good choice mate :) !' }}
        format.json { render :show, status: :created, location: @group }
      else
        puts "=========================="
        puts @group.errors.full_messages
        puts "=========================="

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
        format.html { redirect_to @group, flash: { success:'Your group was successfully created ! Enjoy !' }}
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
