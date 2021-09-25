class Room < ApplicationRecord
  validates_uniqness_of :name
end
