# frozen_string_literal: true

require "rails_helper"

RSpec.describe RegularBand, type: :model do
  describe "#create_regular_band" do
    it "is valid with a name, year, type, registeration, master, pa" do
      band = build(:regular_band)
      expect(band).to be_valid
    end

    it "is invalid without a name" do
      band = build(:regular_band, name: nil)
      band.valid?
      expect(band.errors[:name]).to include("を入力してください")
    end

    it "is invalid without year" do
      band = build(:regular_band, year: nil)
      band.valid?
      expect(band.errors[:year]).to include("を入力してください")
    end

    it "is invalid without type" do
      band = build(:regular_band, type: nil)
      band.valid?
      expect(band.errors[:type]).to include("を入力してください")
    end

    it "is invalid if wrong type" do
      band = build(:regular_band, type: "TemporalBand")
      band.valid?
      expect(band.errors[:type]).to include("は正規バンドでなければいけません")
    end

    it "is invalid without a description" do
      band = build(:regular_band, description: nil)
      band.valid?
      expect(band.errors[:description]).to include("を入力してください")
    end

    it "is invalid without a master" do
      band = build(:regular_band, master: nil)
      band.valid?
      expect(band.errors[:master]).to include("を入力してください")
    end

    it "is invalid without a pa" do
      band = build(:regular_band, pa: nil)
      band.valid?
      expect(band.errors[:pa]).to include("を入力してください")
    end
  end
end
