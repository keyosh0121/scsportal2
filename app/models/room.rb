# frozen_string_literal: true

# == Schema Information
#
# Table name: rooms
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  room_type  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class Room < ApplicationRecord
  has_many :mics
  has_many :room_usages
  scope :practice_rooms, -> { where(room_type: 1) }
  scope :mic_rooms, -> { where(room_type: 2) }
end
