class FavouritesController < ApplicationController

  def create
    @favourite = Favourite.new
    @favourite.user = current_user
    @favourite.solution = Solution.find(params[:solution_id])

    # Still have stuff to do

    if @favourite.save
      redirect_to root_path, notice: "You have added #{@favourite.solution.title} to your favourites"
    else
      redirect_to root_path, notice: "#{@favourite.solution.title} is already in your favourite"
    end

  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to dashboard_path
  end

  private

  # def favourite_params
  #   params.require(:favourite).permit
  # end
end
