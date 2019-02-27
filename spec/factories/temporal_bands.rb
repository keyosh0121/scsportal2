FactoryBot.define do
  factory :temporal_band do
    name                  {"testband"}
    type                  {"TemporalBand"}
    association  :master, factory: :user
  end
end
