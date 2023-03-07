class FavouritesController < ApplicationController

  def create
    # To implement
    @favourite = Favourite.new(favourite_params)
    @favourite.user = current_user
    @favourite.solution = Solution.find(params[:solution_id])
    raise

    # Still have stuff to do
    if @favourite.save
    else
      render "path", status: :unprocessable_entity
    end

  end

  def destroy
    # To implement
    @favourite = Favourite.find(params[:id])
    raise

    # Still have stuff to do
    @favourite.destroy
  end

  private

  def favourite_params
    params.require(:favourite).permit
  end
end
