class Calendar < ApplicationRecord
belongs_to :user
has_many :course
has_many :event
end
