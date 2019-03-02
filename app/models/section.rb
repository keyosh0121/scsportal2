# frozen_string_literal: true

# == Schema Information
#
# Table name: sections
#
#  id           :bigint(8)        not null, primary key
#  name         :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  authority_id :bigint(8)
#  leader_id    :bigint(8)
#
# Indexes
#
#  index_sections_on_authority_id  (authority_id)
#  index_sections_on_leader_id     (leader_id)
#
# Foreign Keys
#
#  fk_rails_...  (authority_id => authorities.id)
#  fk_rails_...  (leader_id => users.id)
#


class Section < ApplicationRecord
  has_many :users
  has_many :room_usages
end
