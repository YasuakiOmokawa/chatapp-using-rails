class User < ApplicationRecord
  validates_uniqness_of :username
  scope :all_except, ->(user) { where.not(id: user) }
end
