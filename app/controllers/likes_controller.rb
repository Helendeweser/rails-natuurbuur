class LikesController < ApplicationController
  def create
    # To implement
    @like = Like.new(like_params)
    @like.user = current_user
    @like.solution = Solution.find(params[:solution_id])
    raise

    # Still have stuff to do
    if @like.save
    else
      render "path", status: :unprocessable_entity
    end

  end

  def destroy
    # To implement
    @like = like.find(params[:id])
    raise

    # Still have stuff to do
    @like.destroy
  end

  private

  def like_params
    params.require(:like).permit
  end
end
