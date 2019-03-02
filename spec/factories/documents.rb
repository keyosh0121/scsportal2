# frozen_string_literal: true

# == Schema Information
#
# Table name: documents
#
#  id              :bigint(8)        not null, primary key
#  name            :string
#  url             :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  presentation_id :bigint(8)        not null
#
# Indexes
#
#  index_documents_on_presentation_id  (presentation_id)
#
# Foreign Keys
#
#  fk_rails_...  (presentation_id => presentations.id)
#

FactoryBot.define do
  factory :document do
  end
end
