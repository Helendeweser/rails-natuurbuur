class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:testing]
  def testing
  end
end
