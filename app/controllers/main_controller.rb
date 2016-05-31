class MainController < ApplicationController
  def index
    @projects          = Project.all.order_by(created_at: 'desc')
    @employers         = Employee.all.order_by(order_number: 'asc')
    @technologies      = Technology.all
    @working_with_us   = Statistic.where(key: 'working_with_us').first
    @projects_released = Statistic.where(key: 'projects_released').first
    @awards_owned      = Statistic.where(key: 'awards_owned').first
  end
end
