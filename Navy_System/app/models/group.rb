class Group < ActiveRecord::Base
  attr_accessible :id, :name, :note, :open_all

  has_many :users
end
