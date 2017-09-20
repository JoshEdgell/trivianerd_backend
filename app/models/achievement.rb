class Achievement < ApplicationRecord
  has_many :users
  has_many :users, through: :badges
end
