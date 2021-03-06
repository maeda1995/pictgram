class CommentsController < ApplicationController
  def new 
    @comment = Comment.new
    @topic_id = params[:topic_id]
  end
  
  def create
    #@comment = Comment.new(comment_params)
    @comment = current_user.comments.new(comment_params)
    #binding.pry
    if @comment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end

  end
  
  

  private
  def comment_params
    params.require(:comment).permit(:discription, :topic_id)
  end
end
