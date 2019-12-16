class Event < ApplicationRecord
  has_many :calendar
  has_many :course
  has_many :notebook
  has_many :homework
end
