class SolutionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @solutions = Solution.all.order(:title)
    @favourites = current_user.solutions if user_signed_in?
  end

  def show
    @solution = Solution.find(params[:id])
  end
end
