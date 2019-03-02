# frozen_string_literal: true

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
