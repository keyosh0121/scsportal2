# frozen_string_literal: true

# == Schema Information
#
# Table name: comments
#
#  id              :bigint(8)        not null, primary key
#  comment         :text             not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  presentation_id :bigint(8)        not null
#  user_id         :bigint(8)        not null
#
# Indexes
#
#  index_comments_on_presentation_id  (presentation_id)
#  index_comments_on_user_id          (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (presentation_id => presentations.id)
#  fk_rails_...  (user_id => users.id)
#


FactoryBot.define do
  factory :comment do
  end
end
