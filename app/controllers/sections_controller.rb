class SectionsController < ApplicationController

  def index
    @sections = Section.sorted
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      flash[:notice] = "Section successfully saved"
      redirect_to(sections_path)
    else
      render('new')
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

  def section_params
    params.require(:section).permit(:name, :page_id, :content, :content_type, :position, :visible)
  end

end
