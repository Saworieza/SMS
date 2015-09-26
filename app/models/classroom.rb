class Classroom < ActiveRecord::Base
    has_many :streams
    has_many :students
    has_many :teachers
end
