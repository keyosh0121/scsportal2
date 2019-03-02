class RoomUsage < ApplicationRecord
	belongs_to :user
	belongs_to :band
	belongs_to :section
	belongs_to :room
	belongs_to :period
end
