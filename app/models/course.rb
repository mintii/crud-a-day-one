class Course < ActiveRecord::Base
  has_many :instructorsschedule
  has_many :instructors, through: :instructorsschedule
end
