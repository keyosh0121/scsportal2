# frozen_string_literal: true

require "rails_helper"

RSpec.describe TemporalBand, type: :model do
  describe "#create_temporal_band" do
    it "is valid with a name, type, master" do
      band = build(:temporal_band)
      expect(band).to be_valid
    end

    it "is invalid without a name" do
      band = build(:temporal_band, name: nil)
      band.valid?
      expect(band.errors[:name]).to include("を入力してください")
    end

    it "is valid without year" do
      band = build(:temporal_band, year: nil)
      band.valid?
      expect(band).to be_valid
    end

    it "is invalid without type" do
      band = build(:temporal_band, type: nil)
      band.valid?
      expect(band.errors[:type]).to include("を入力してください")
    end

    it "is invalid if wrong type" do
      band = build(:temporal_band, type: "RegularBand")
      band.valid?
      expect(band.errors[:type]).to include("は企画バンドでなければいけません")
    end

    it "is valid without a description" do
      band = build(:temporal_band, description: nil)
      band.valid?
      expect(band).to be_valid
    end

    it "is invalid without a master" do
      band = build(:temporal_band, master: nil)
      band.valid?
      expect(band.errors[:master]).to include("を入力してください")
    end

    it "is valid without a pa" do
      band = build(:temporal_band, pa: nil)
      band.valid?
      expect(band).to be_valid
    end
  end
end
