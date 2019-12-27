class EventGroup < ApplicationRecord
  has_many :event
  has_many :notebook

  validates_presence_of :event, :group
end
