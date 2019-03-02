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

FactoryBot.define do
  factory :authority do
    name  { "一般" }
  end
end
