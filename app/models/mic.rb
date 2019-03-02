# frozen_string_literal: true

# == Schema Information
#
# Table name: mics
#
#  id            :bigint(8)        not null, primary key
#  date          :date             not null
#  end_time      :time
#  order         :integer
#  pa_attendance :string
#  remark        :text
#  start_time    :time
#  status        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  band_id       :bigint(8)        not null
#  period_id     :bigint(8)        not null
#  room_id       :bigint(8)
#  user_id       :bigint(8)        not null
#
# Indexes
#
#  index_mics_on_band_id    (band_id)
#  index_mics_on_period_id  (period_id)
#  index_mics_on_room_id    (room_id)
#  index_mics_on_user_id    (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (band_id => bands.id)
#  fk_rails_...  (period_id => periods.id)
#  fk_rails_...  (room_id => rooms.id)
#  fk_rails_...  (user_id => users.id)
#


class Mic < ApplicationRecord
  belongs_to :user
  belongs_to :band
  belongs_to :room, optional: true
  belongs_to :period
end
