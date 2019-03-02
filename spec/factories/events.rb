# frozen_string_literal: true

# == Schema Information
#
# Table name: events
#
#  id                :bigint(8)        not null, primary key
#  date              :date
#  end_time          :time
#  entry_end         :time
#  entry_requirement :boolean          default(FALSE), not null
#  entry_start       :time
#  name              :string           not null
#  place             :string
#  start_time        :time
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  host_id           :bigint(8)
#
# Indexes
#
#  index_events_on_host_id  (host_id)
#
# Foreign Keys
#
#  fk_rails_...  (host_id => users.id)
#

FactoryBot.define do
  factory :event do
  end
end
