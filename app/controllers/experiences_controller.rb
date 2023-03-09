class ExperiencesController < ApplicationController
  before_action :set_solution
  before_action :set_experience, only: %i[update destroy]

  def create
    # To implement
    @experience = Experience.new(experiences_params)
    @experience.user = current_user
    @experience.solution = @solution

    # Still have stuff to do
      if @experience.save
        redirect_to solution_path(@solution)
      else
        render "path", status: :unprocessable_entity
      end
  end

  def update
    # To implement
    raise
    @experience.update(experiences_params)
    redirect_to solution_path(@solution)
  end

  def destroy
    # To implement
    raise
    @experience.destroy
    redirect_to solution_path(@solution)
  end

  private

  def experiences_params
    params.require(:experience).permit(:content, :rating, :photo)
  end

  def set_solution
    @solution = Solution.find(params[:solution_id])
  end

  def set_experience
    @experience = Experience.find(params[:id])
  end

end
