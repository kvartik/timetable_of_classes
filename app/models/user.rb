class User < ApplicationRecord

  validates :login, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }, if: -> { new_record? || !password.nil? }


belongs_to :calendar
end
