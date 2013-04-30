class Vacation < ActiveRecord::Base
  attr_accessible :from_date, :note, :to_date, :user_id, :vacation_type_id
  belongs_to :user
  belongs_to :vacation_type
	
end
