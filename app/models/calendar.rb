class Calendar < ApplicationRecord
belongs_to :user
has_many :event_groups
has_many :event
end
