# frozen_string_literal: true

FactoryBot.define do
  factory :regular_band do
    name                  { "testband" }
    year                  { 2019 }
    type                  { "RegularBand" }
    description           { "test" }
    association  :master, factory: :user
    association  :pa,     factory: :user
  end
end
