# frozen_string_literal: true

# == Schema Information
#
# Table name: presentation_hosts
#
#  id              :bigint(8)        not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  presentation_id :bigint(8)        not null
#  user_id         :bigint(8)        not null
#
# Indexes
#
#  index_presentation_hosts_on_presentation_id  (presentation_id)
#  index_presentation_hosts_on_user_id          (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (presentation_id => presentations.id)
#  fk_rails_...  (user_id => users.id)
#

require "rails_helper"

RSpec.describe PresentationHost, type: :model do
end
