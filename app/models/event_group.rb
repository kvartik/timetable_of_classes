class EventGroup < ApplicationRecord
  has_many :calendar
  has_one :event

end
