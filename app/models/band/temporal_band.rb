# frozen_string_literal: true

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
