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


class RegularBandValidator < ActiveModel::Validator
  def validate(record)
    unless !record.type.nil? && record.type.match("RegularBand")
      record.errors[:type] << "は正規バンドでなければいけません"
    end
  end
end

class RegularBand < Band
  include ActiveModel::Validations
  belongs_to :pa, class_name: "User", foreign_key: "pa_id"
  validates :year, presence: true
  validates :description, presence: true
  validates_with RegularBandValidator
end
