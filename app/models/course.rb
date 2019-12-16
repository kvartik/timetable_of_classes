class Course < ApplicationRecord
  has_many :calendar
  has_many :event
end
