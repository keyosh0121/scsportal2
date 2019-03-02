# frozen_string_literal: true

FactoryBot.define do
  factory :temporal_band do
    name                  { "testband" }
    type                  { "TemporalBand" }
    association :master, factory: :user
  end
end
