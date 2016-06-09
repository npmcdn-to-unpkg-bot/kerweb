class MainController < ApplicationController
  def index
    @projects          = Project.all.order_by(order: 'asc')
    @employers         = Employee.all.order_by(order_number: 'asc')
    @technologies      = Technology.all
    @statistics = get_random_statistics_new
  end

  def get_random_statistics(n)
    offset = 0
    cnt = Statistic.count
    if n < cnt
      offset = rand(cnt-n)
    end
    Statistic.skip(offset).limit(n)
  end

  def get_random_statistics_new
    rand1 = rand(Statistic.count)
    rand2 = rand(Statistic.count)
    while rand2==rand1
      rand2 = rand(Statistic.count)
    end
    rand3 = rand(Statistic.count)
    while rand3==rand1 or rand3==rand2
      rand3 = rand(Statistic.count)
    end

    [Statistic.offset(rand1).first, Statistic.offset(rand2).first, Statistic.offset(rand3).first]
  end

end
