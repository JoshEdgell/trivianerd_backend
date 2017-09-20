class User < ApplicationRecord
  has_secure_password
  has_many :badges
  has_many :achievements, through: :badges
end
