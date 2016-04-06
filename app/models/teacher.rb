class Teacher < ActiveRecord::Base
  belongs_to :school

  has_many :courses
  has_many :students, through: :courses
end
