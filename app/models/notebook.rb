class Notebook < ApplicationRecord
  has_one :event

    validates_presence_of :event_group, :text 
end
