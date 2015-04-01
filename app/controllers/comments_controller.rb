class CommentsController < ApplicationController
  respond_to :json, :html
  def index
    @comments = Comment.all
    respond_with @comments
  end

  def create
    @comment = Comment.create comment_params
    redirect_to comments_path
  end

  private
  def comment_params
    params.require(:comment).permit(:user, :content, :vip)
  end
end
