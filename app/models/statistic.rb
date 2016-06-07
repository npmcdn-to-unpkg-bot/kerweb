class Statistic
  include Mongoid::Document

  field :title
  field :value
  field :icon

  validates_presence_of :title, :value, :icon
end
