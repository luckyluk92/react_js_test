class CommentsController < ApplicationController
  respond_to :json, :html
  def index
    @comments = Comment.all
    respond_with @comments
  end
end
