# frozen_string_literal: true

# == Schema Information
#
# Table name: authorities
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Authority < ApplicationRecord
  has_many :users
end
