class Student < ActiveRecord::Base
  validates :name, :presence => true
  validates :roll_no, :presence => true
  validates :address, :presence => true
end
