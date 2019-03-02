# frozen_string_literal: true

# == Schema Information
#
# Table name: room_usages
#
#  id         :bigint(8)        not null, primary key
#  date       :date             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  band_id    :bigint(8)
#  period_id  :bigint(8)        not null
#  room_id    :bigint(8)        not null
#  section_id :bigint(8)
#  user_id    :bigint(8)        not null
#
# Indexes
#
#  index_room_usages_on_band_id     (band_id)
#  index_room_usages_on_period_id   (period_id)
#  index_room_usages_on_room_id     (room_id)
#  index_room_usages_on_section_id  (section_id)
#  index_room_usages_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (band_id => bands.id)
#  fk_rails_...  (period_id => periods.id)
#  fk_rails_...  (room_id => rooms.id)
#  fk_rails_...  (section_id => sections.id)
#  fk_rails_...  (user_id => users.id)
#


require "rails_helper"

RSpec.describe RoomUsage, type: :model do
end
