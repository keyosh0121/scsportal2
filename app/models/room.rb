class Room < ApplicationRecord
	has_many :mics
	scope :practice_rooms, -> { where(room_type:1) }
	scope :mic_rooms, -> { where(room_type:2) }
end
