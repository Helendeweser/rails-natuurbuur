class SolutionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR explanation ILIKE :query OR intro ILIKE :query"
      @solutions = Solution.where(sql_query, query: "%#{params[:query]}%")
    else
      @solutions = Solution.all.order(:title)
    end
  end

  def show
    @solution = Solution.find(params[:id])
  end
end
