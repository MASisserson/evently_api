class Event < ApplicationRecord
  has_many :attendees

  belongs_to :calendar
  belongs_to :user
end
