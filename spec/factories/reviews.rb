# frozen_string_literal: true

# == Schema Information
#
# Table name: reviews
#
#  id         :bigint(8)        not null, primary key
#  content    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  band_id    :bigint(8)        not null
#  event_id   :bigint(8)        not null
#  user_id    :bigint(8)        not null
#
# Indexes
#
#  index_reviews_on_band_id   (band_id)
#  index_reviews_on_event_id  (event_id)
#  index_reviews_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (band_id => bands.id)
#  fk_rails_...  (event_id => events.id)
#  fk_rails_...  (user_id => users.id)
#

FactoryBot.define do
  factory :review do
  end
end
