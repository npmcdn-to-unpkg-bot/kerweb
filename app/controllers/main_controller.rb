class MainController < ApplicationController
  def index
    @projects          = Project.all.order_by(created_at: 'desc')
    @employers         = Employee.all.order_by(order_number: 'asc')
    @technologies      = Technology.all
    @statistics = get_random_statistics(3)
  end

  def get_random_statistics(n)
    offset = 0
    cnt = Statistic.count
    if n < cnt
      offset = rand(cnt-n)
    end
    Statistic.skip(offset).limit(n)
  end

end
