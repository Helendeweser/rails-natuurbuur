class SolutionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_favourites

  def index
    @solutions = Solution.all.order(:title)

    searching_filtering
  end

  def show
    @solution = Solution.find(params[:id])
    @experience = Experience.new
    @likes = current_user.likes if user_signed_in?
  end

  private

  def set_favourites
    @favourites = current_user.solutions if user_signed_in?
  end

  def searching_filtering
    if params[:query].present?
      sql_query = "title ILIKE :query OR explanation ILIKE :query OR intro ILIKE :query"
      @solutions = Solution.where(sql_query, query: "%#{params[:query]}%")

      if params[:solution][:category].present?
        filter_query = "category in ('{%s}')"
        @solutions = @solutions.where(filter_query, params[:solution][:category])

        if params[:solution][:difficulty].present?
          filter_query = "difficulty = ?"
          @solutions = @solutions.where(filter_query, params[:solution][:difficulty])
        end

      elsif params[:solution][:difficulty].present?
        filter_query = "difficulty = ?"
        @solutions = @solutions.where(filter_query, params[:solution][:difficulty])
      end

    elsif params[:solution]
      if params[:solution][:category].present?
        filter_query = "category in ('{%s}')"
        @solutions = @solutions.where(filter_query, params[:solution][:category])

        if params[:solution][:difficulty].present?
          filter_query = "difficulty = ?"
          @solutions = @solutions.where(filter_query, params[:solution][:difficulty])
        end

      elsif params[:solution][:difficulty].present?
        filter_query = "difficulty = ?"
        @solutions = @solutions.where(filter_query, params[:solution][:difficulty])
      end
    else
      @solutions
    end
  end

end
