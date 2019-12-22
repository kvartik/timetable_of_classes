class Event < ApplicationRecord
  has_many :calendar
  has_many :event_groups
  has_many :notebook
  has_many :homework
end
