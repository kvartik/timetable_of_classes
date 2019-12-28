class Homework < ApplicationRecord
  has_one :group

  validates_presence_of :event, :text
end
