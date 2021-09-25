class Room < ApplicationRecord
  validates_uniqness_of :name
  scope :public_rooms, -> { where(is_private: false) }
end
