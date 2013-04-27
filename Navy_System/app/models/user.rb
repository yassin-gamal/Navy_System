class User < ActiveRecord::Base
  attr_accessible :id,:address, :blood, :group_id, :job_type, :military_number, :name, :near_relative, :note, :password, :password_confirmation, :phone, :rank_id, :start_date, :status, :tag_date, :tas_date, :type
  
  
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password

  belongs_to :rank
  belongs_to :group

  has_many :vacations
  has_many :vacation_types, :through => :vacations
end
