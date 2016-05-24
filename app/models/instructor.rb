class Instructor < ActiveRecord::Base
  has_many :instructorsSchedule
  has_many :courses, through: :instructorsSchedule
  belongs_to :department
end
