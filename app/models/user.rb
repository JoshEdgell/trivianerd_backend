class User < ApplicationRecord
  has_many :badges
  has_many :achievements, through: :badges
end
