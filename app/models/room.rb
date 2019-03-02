# frozen_string_literal: true

class Room < ApplicationRecord
  has_many :mics
  has_many :room_usages
  scope :practice_rooms, -> { where(room_type: 1) }
  scope :mic_rooms, -> { where(room_type: 2) }
end
