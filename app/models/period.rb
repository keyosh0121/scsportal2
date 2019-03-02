# frozen_string_literal: true

class Period < ApplicationRecord
  has_many :mics
  has_many :room_usages
end
