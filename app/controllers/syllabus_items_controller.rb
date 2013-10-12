class SyllabusItemsController < ApplicationController
  def index
    @syllabus_items = SyllabusItem.all
  end

  def show
    @syllabus_item = SyllabusItem.find(params[:id])
  end
end
