class Group < ActiveRecord::Base
  attr_accessible :name, :note, :open_all

  has_many :users
end
