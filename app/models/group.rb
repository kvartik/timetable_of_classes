class Group < ApplicationRecord
    has_many :events
    has_many :notebooks

  validates_presence_of :event, :group
end
