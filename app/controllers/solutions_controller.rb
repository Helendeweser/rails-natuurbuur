class SolutionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @solutions = Solution.all
  end
end
