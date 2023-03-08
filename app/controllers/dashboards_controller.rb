class DashboardsController < ApplicationController

  def my_solutions
    @favourites = Favourite.where(user_id: current_user.id)
    @solutions = @favourites.map{ |favourite| favourite.solution }
  end
end
