class SolutionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @solutions = Solution.all.order(:title)
    @favourites = current_user.solutions if user_signed_in?

    if params[:query].present?
      sql_query = "title ILIKE :query OR explanation ILIKE :query OR intro ILIKE :query"
      @solutions = Solution.where(sql_query, query: "%#{params[:query]}%")
    else
      @solutions
    end

    # @solutions = Solution.where(:category => params[:solution][:category]).all

  end

  def show
    @favourites = current_user.solutions if user_signed_in?
    @solution = Solution.find(params[:id])
    @experience = Experience.new
  end
end
