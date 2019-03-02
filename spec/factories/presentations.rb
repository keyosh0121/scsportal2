# frozen_string_literal: true

# == Schema Information
#
# Table name: presentations
#
#  id         :bigint(8)        not null, primary key
#  length     :time
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :bigint(8)        not null
#  host_id    :bigint(8)
#
# Indexes
#
#  index_presentations_on_event_id  (event_id)
#  index_presentations_on_host_id   (host_id)
#
# Foreign Keys
#
#  fk_rails_...  (event_id => events.id)
#  fk_rails_...  (host_id => users.id)
#

FactoryBot.define do
  factory :presentation do
  end
end
