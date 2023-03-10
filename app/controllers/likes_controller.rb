class LikesController < ApplicationController
  def create
    @like = Like.new
    @like.user = current_user
    @like.solution = Solution.find(params[:solution_id])
    redirect_back_or_to root_path if @like.save

  end

  def destroy
    solution = Solution.find(params[:id])
    @like = Like.where(solution_id: solution.id.to_s).first
    @like.destroy
    redirect_back_or_to root_path
  end

  private

  def like_params
    params.require(:like).permit
  end
end
