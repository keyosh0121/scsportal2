# frozen_string_literal: true

class Authority < ApplicationRecord
  has_many :users
end
