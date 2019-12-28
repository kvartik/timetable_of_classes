class Notebook < ApplicationRecord
  has_one :event

    validates_presence_of :group, :text 
end
