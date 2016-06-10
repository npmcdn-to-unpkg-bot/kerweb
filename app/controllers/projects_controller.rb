class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    @meta_image_url = @project.demo_img(:thumb)
  end
end
