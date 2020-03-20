class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show]

  # def index
  #   @all_comments = Comment.all
  # end
  
  def show
    @id = params[:id]
    @comment = Comment.find(@id)
  end

  def new
    @comment = Comment.new
  end
    

  def create
    @comment = Comment.new(content: params['content'], user: current_user,  group_id: params['group_id'].to_i)
    if @comment.save
      redirect_to group_path(@comment.group_id), flash: { success:'Votre commentaire a bien été créé' }
    else
      redirect_back(fallback_location: root_path)
      @error = @comment.errors.full_messages
      
    end
  end 

  # def edit
  #   @comment = Comment.find(comment_id)
  # end

  # def update
  #   @comment = Comment.find(params[:id])
  #   if @comment.update(content: params['content'], user: User.find_by(first_name: params['first_name'], gossip_id: params['gossip_id']))
  #     redirect_to @comment
  #   else
  #     @error = @comment.errors.full_messages
  #     render :edit
  #   end
  # end
 

  def destroy
    @comment = Group.find(params[:id])
    @comment.destroy
    redirect_to @comment
  end

 

end
