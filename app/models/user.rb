class User < ApplicationRecord
  has_many :users
  has_many :calendars
  has_many :events

  belongs_to :account
  belongs_to :user
end
