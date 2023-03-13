class SolutionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_favourites

  def index
    @solutions = Solution.all.order(:title)

    if params[:query].present?
      sql_query = "title ILIKE :query OR explanation ILIKE :query OR intro ILIKE :query"
      @solutions = Solution.where(sql_query, query: "%#{params[:query]}%")
    else
      @solutions
    end

  end

  def show
    @solution = Solution.find(params[:id])
    @experience = Experience.new
    @likes = current_user.likes if user_signed_in?
  end

  def popup
    render partial: 'solutions/popup', locals: { solution: @solution }
  end

  private

  def set_favourites
    @favourites = current_user.solutions if user_signed_in?
  end

end
