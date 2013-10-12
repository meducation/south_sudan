class SlidesController < ApplicationController

  before_action :find_tutorial

  def index
    redirect_to [@tutorial, @tutorial.slides.first]
  end

  def show
    @slide = @tutorial.slides.find(params[:id])
  end

  private

  def find_tutorial
    @tutorial = Tutorial.find(params[:tutorial_id])
  end

end
