class CommentsController < ApplicarionController

  def create
	@comments = Comment.new(comment_params)
  end

  def destroy
  	@comment.destroy
  end
end