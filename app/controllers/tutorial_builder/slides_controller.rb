class TutorialBuilder::SlidesController < ApplicationController

  before_action :check_author!
  before_action :find_tutorial

  def new
    @slide = Slide.new
  end

  def edit
    @slide = @tutorial.slides.find(params[:id])
  end

  def create
    @slide = @tutorial.slides.build(slide_params)
    if @slide.save
      redirect_to new_tutorial_builder_tutorial_slide_path(@tutorial)
    else
      render :edit
    end

  end

  private

  def find_tutorial
    @tutorial = Tutorial.find(params[:tutorial_id])
  end

  def slide_params
    params.require(:slide).permit(:title, :content)
  end
end

