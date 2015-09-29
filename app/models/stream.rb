class Stream < ActiveRecord::Base
  belongs_to :classroom #:through=> :teacher
  belongs_to :teacher
end
