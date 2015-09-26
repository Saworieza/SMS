class Stream < ActiveRecord::Base
  belongs_to :classroom #:through=> :teacher
end
