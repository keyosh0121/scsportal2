# frozen_string_literal: true

class Mic < ApplicationRecord
  belongs_to :user
  belongs_to :band
  belongs_to :room, optional: true
  belongs_to :period
end
