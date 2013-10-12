class TutorialBuilder::TutorialsController < ApplicationController

  before_action :check_author!

  def new
    @tutorial = Tutorial.new(syllabus_item_id: params[:syllabus_item_id])
  end

  def create
    @tutorial = current_user.authored_tutorials.build(tutorial_params)
    if @tutorial.save
      redirect_to new_tutorial_builder_tutorial_slide_path(@tutorial)
    else
      render :new
    end

  end

  private

  def tutorial_params
    params.require(:tutorial).permit(:title, :description, :syllabus_item_id)
  end
end
