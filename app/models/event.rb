class Event < ApplicationRecord
  has_many :calendars
  has_one :homework
  has_one :group

 validates_presence_of :calendar, :group, :homework, :datetime
end
