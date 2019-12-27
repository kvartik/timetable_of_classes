class Homework < ApplicationRecord
  has_one :event_group

  validates_presence_of :event, :text 
end
