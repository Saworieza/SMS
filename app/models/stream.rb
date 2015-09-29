class Stream < ActiveRecord::Base
  belongs_to :classroom #:through=> :teacher
  has_many :teachers
  has_many :students
end
