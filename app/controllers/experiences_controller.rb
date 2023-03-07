class ExperiencesController < ApplicationController

  def create
    # To implement
    @experience = Experience.new(experiences_params)
    @experience.user = current_user
    @experience.solution = Solution.find(params[:solution_id])
    raise

    # Still have stuff to do
      if @experience.save
      else
        render "path", status: :unprocessable_entity
      end

  end

  def update
    # To implement
  end

  def destroy
    # To implement
  end

  def experiences_params
    params.require(:experiences).permit(:content, :rating, :photo)
  end
end
