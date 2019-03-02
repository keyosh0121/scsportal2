# frozen_string_literal: true

# == Schema Information
#
# Table name: band_members
#
#  id         :bigint(8)        not null, primary key
#  mic_number :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  band_id    :bigint(8)        not null
#  user_id    :bigint(8)        not null
#
# Indexes
#
#  index_band_members_on_band_id  (band_id)
#  index_band_members_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (band_id => bands.id)
#  fk_rails_...  (user_id => users.id)
#


FactoryBot.define do
  factory :band_member do
  end
end
