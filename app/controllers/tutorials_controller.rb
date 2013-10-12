class TutorialsController < ApplicationController

  def show
    @tutorial = Tutorial.find(params[:id])
  end

end
