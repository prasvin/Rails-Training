class Attendance < ActiveRecord::Base
  validates :student_name, :presence => true
  validates :year,  :presence => true , :numericality => true
  validates :month,  :presence => true , :numericality => true
  validates :day, :presence => true , :numericality => true
  validates :present, :inclusion => {:in => [true, false]}
end
