class Statistic
  include Mongoid::Document

  field :key
  field :title
  field :value

  validates_presence_of :key, :title, :value
end
