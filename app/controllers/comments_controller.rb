class CommentsController < ApplicationController
  def create
    comment = current_user.comments.build(tweet_id: params[:tweet_id], body: params[:comment][:body])
    comment.save
    redirect_to tweet_path(params[:tweet_id])
  end

  def destroy
  end
end
