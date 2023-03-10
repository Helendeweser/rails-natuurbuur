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

    # if @solution.experiences.first
    #   @average_rating = ratings_average(@solution)
    # end
  end

  def show
    @favourites = current_user.solutions if user_signed_in?
    @solution = Solution.find(params[:id])
    @experience = Experience.new
    @likes = current_user.likes if user_signed_in?
  end

end
