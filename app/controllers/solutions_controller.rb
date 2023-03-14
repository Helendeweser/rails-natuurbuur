class SolutionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_favourites

  def index
    @solutions = Solution.all.order(:title)
    searching_solutions if params[:query]
    filtering_solutions if params[:solution]
    sorting_solutions if params[:sorting]
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

  def searching_solutions
    sql_query = "title ILIKE :query OR explanation ILIKE :query OR intro ILIKE :query"
    @solutions = Solution.where(sql_query, query: "%#{params[:query]}%")

  end

  def filtering_solutions
    if params[:solution][:category].present?
      filter_query = "category in ('{%s}')"
      @solutions = @solutions.where(filter_query, params[:solution][:category])
    end

    if params[:solution][:difficulty].present?
      filter_query = "difficulty = ?"
      @solutions = @solutions.where(filter_query, params[:solution][:difficulty])
    end
  end

  def sorting_solutions
    case params[:sorting][:by].downcase
    when "likes" then @solutions = @solutions.sort_by { |solution| solution.likes.size }.reverse
    when "rating" then @solutions = sorting_rating
    when "price" then @solutions = @solutions.sort_by(&:price)
    end
  end

  def sorting_rating
    # Because solution whitout rating have a string "New" as value
    rates = []
    new = []
    @solutions.each do |solution|
      if solution.average_rating.class == String then new << solution
      elsif solution.average_rating.class != String then rates << solution
      end
    end
    sorting_rates = rates.sort_by(&:average_rating).reverse
    new.each { |solution| sorting_rates << solution }
    sorting_rates
  end
end
