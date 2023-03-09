class FavouritesController < ApplicationController
  def create
    @favourite = Favourite.new
    @favourite.user = current_user
    @favourite.solution = Solution.find(params[:solution_id])

    if @favourite.save
      redirect_back_or_to root_path, notice: "You have added #{@favourite.solution.title} to your favourites"
    else
      redirect_back_or_to root_path, notice: "#{@favourite.solution.title} is already in your favourite"
    end
  end

  def destroy
    solution = Solution.find(params[:id])
    @favourite = Favourite.where(solution_id: solution.id.to_s).first
    @favourite.destroy
    redirect_back_or_to root_path
  end
end
