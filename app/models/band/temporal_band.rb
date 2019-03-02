# frozen_string_literal: true

# == Schema Information
#
# Table name: bands
#
#  id            :bigint(8)        not null, primary key
#  description   :text
#  name          :string           not null
#  registeration :boolean          not null
#  type          :string
#  web_url       :string
#  year          :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  master_id     :bigint(8)        not null
#  pa_id         :bigint(8)        not null
#
# Indexes
#
#  index_bands_on_master_id  (master_id)
#  index_bands_on_pa_id      (pa_id)
#
# Foreign Keys
#
#  fk_rails_...  (master_id => users.id)
#  fk_rails_...  (pa_id => users.id)
#

class TemporalBandValidator < ActiveModel::Validator
  def validate(record)
    unless !record.type.nil? && record.type.match("TemporalBand")
      record.errors[:type] << "は企画バンドでなければいけません"
    end
  end
end

class TemporalBand < Band
  belongs_to :pa, class_name: "User", foreign_key: "pa_id", optional: true
  validates_with TemporalBandValidator
end
