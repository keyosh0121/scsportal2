# frozen_string_literal: true

# == Schema Information
#
# Table name: bands
#
#  id            :bigint(8)        not null, primary key
#  description   :text
#  name          :string           not null
#  registeration :boolean          not null
#  type          :string
#  web_url       :string
#  year          :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  master_id     :bigint(8)        not null
#  pa_id         :bigint(8)        not null
#
# Indexes
#
#  index_bands_on_master_id  (master_id)
#  index_bands_on_pa_id      (pa_id)
#
# Foreign Keys
#
#  fk_rails_...  (master_id => users.id)
#  fk_rails_...  (pa_id => users.id)
#

FactoryBot.define do
  factory :temporal_band do
    name                  { "testband" }
    type                  { "TemporalBand" }
    association :master, factory: :user
  end
end
