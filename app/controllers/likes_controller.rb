class LikesController < ApplicationController
  def create
    @like = Like.new(like_params)
    @like.user = current_user
    @like.solution = Solution.find(params[:solution_id])

    redirect_back_or_to root_path if @like.save

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
