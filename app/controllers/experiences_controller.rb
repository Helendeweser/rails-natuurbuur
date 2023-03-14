class ExperiencesController < ApplicationController
  before_action :set_solution
  before_action :set_experience, only: %i[update destroy]

  def create
    @experience = Experience.new(experiences_params)
    @experience.user = current_user
    @experience.solution = @solution

    respond_to do |format|
      if @experience.save
        format.html { redirect_to solution_path(@solution) }
        format.json
      else
        # If render because of the validation, the show page will need this values
        @likes = current_user.likes if user_signed_in?
        @favourites = current_user.solutions if user_signed_in?
        format.html { render "solutions/show", status: :unprocessable_entity }
        format.json
      end
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
