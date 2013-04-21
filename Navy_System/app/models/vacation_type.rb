class VacationType < ActiveRecord::Base
  attr_accessible :name

  has_many :vacations
  has_many :users, :through => :vacations
end
