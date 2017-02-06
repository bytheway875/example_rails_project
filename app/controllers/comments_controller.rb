class CommentsController < ApplicationController
  def create
    comment = @current_user.comments.create(comment_params)
    if comment.persisted?
      redirect_to post_path(comment.post), notice: "We saved your comment."
    else
      redirect_to post_path(comment.post), notice: "We couldn't save your comment"
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    if comment.destroy!
      redirect_to post_path(comment.post.id), notice: "We deleted your comment."
    end
  end

  private

  def comment_params
    params.fetch(:comment, {}).permit(:post_id, :content)
  end
end
