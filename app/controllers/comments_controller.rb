class CommentsController < ApplicationController
  before_action :confirm_login

  def create
    @post = current_user.posts.build(post_params)
    @comment = @post.comments.create(params[:comment].permit(:comment))
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  def confirm_login
    unless current_user
      redirect_to login_path, alert: 'Must be logged in to comment!'
    end
  end
end
