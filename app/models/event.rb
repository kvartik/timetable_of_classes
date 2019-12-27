class Event < ApplicationRecord
  has_many :calendar
  has_one :homework
  has_one :event_group

  validates_presence_of :calendar, :event_group, :homework, :datetime
end
