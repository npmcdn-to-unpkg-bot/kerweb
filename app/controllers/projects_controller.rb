class ProjectsController < ApplicationController
  def index
    @projects = Project.all.order('order asc')
  end
end
