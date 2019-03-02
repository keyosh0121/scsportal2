# frozen_string_literal: true

class Section < ApplicationRecord
  has_many :users
  has_many :room_usages
end
