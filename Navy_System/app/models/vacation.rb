class Vacation < ActiveRecord::Base
  attr_accessible :from_date, :note, :to_date

  belongs_to :user
  belongs_to :vacation_type
end
